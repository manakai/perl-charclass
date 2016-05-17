use strict;
use warnings;
use JSON::PS;
use Path::Tiny;

my $root_path = path (__FILE__)->parent->parent;
my $json_path = $root_path->child ('local/sets.json');
my $json = json_bytes2perl $json_path->slurp;

my $ModuleName = shift @ARGV // die "No module name";
my $PrefixName = shift @ARGV // die "No prefix name";
my $ModuleVersion = '2.0';

my %SET;
my %SET_ALIAS;
my %PROP;

for (@ARGV) {
  if (/^([\w_]+)=(.+)$/) {
    my $perl_name = $1;
    my $set_name = $2;
    my $def = $json->{sets}->{$set_name} or die "Set |$set_name| not defined";
    my $chars = $def->{chars};
    $chars =~ s/^\[//;
    $chars =~ s/\]$//;
    my $ranges = $SET{$perl_name}->{ranges} = [];
    while (length $chars) {
      my $range = [];
      if ($chars =~ s/^(?:([^\\])|\\u([0-9A-Fa-f]{4})|\\u\{([0-9A-Fa-f]+)\})//s) {
        $range->[0] = defined $1 ? ord $1 : defined $2 ? hex $2 : hex $3;
      }
      unless ($chars =~ s/^-//) {
        $range->[1] = $range->[0];
        push @$ranges, $range;
        next;
      }
      if ($chars =~ s/^(?:([^\\])|\\u([0-9A-Fa-f]{4})|\\u\{([0-9A-Fa-f]+)\})//s) {
        $range->[1] = defined $1 ? ord $1 : defined $2 ? hex $2 : hex $3;
      }
      push @$ranges, $range;
    }
  } elsif (/^([\w_]+)<-([\w_]+)$/) {
    $SET_ALIAS{$1} = $2;
  } else {
    die "Bad argument |$_|";
  }
}

sub header () {
<<"EOH";
## This file is auto-generated.  Do not edit by hand!
use strict;

package Char::Class::$ModuleName;
our \$VERSION = '$ModuleVersion';
@{[
#package main;
]}
use Exporter;
use vars qw(\@EXPORT_OK \@ISA \$VERSION);
\@ISA = qw(Exporter);

=head1 NAME

Char::Class::$ModuleName - Regular Expression Character Classes - C<$PrefixName>
@{[$PROP{pod_description}? "
=head1 DESCRIPTION

$PROP{pod_description}":'']}

=cut

sub import (\$;\@) {
  my (\$self, \@sub) = (shift, \@_);
  for (\@sub) {
    no strict 'refs';
    *{'main::'.\$_} = \\&{\$_};
  }
  \$Exporter::ExportLevel = 1;
  \$self->SUPER::import (\@_);
  \$Exporter::ExportLevel = 0;
}

EOH
}

sub table () {
  my $prefix = $PrefixName;
my $r = '';
my @set;
my %set_description;
for (sort keys %SET) {
  my $set_def = $SET{$_};
  my (@aline,@aitem);
  $set_description{qq(In${prefix}$_)} = $set_def->{desc}; # or undef;
  push @set, [qq(In${prefix}$_) => 
    join "\n",
        qq(sub In${prefix}$_ {),
        q(<<EOH;),
        (
          map {
            if ($_->[0] == $_->[1]) {
              sprintf '%04X', $_->[0];
            } else {
              sprintf "%04X\t%04X\t", $_->[0], $_->[1];
            }
          } sort { $a->[0] <=> $b->[0] } @{$set_def->{ranges}}
        ),
        q(EOH),
        q(}),
  ];
}
for (sort keys %SET_ALIAS) {
  push @set, [qq(In${prefix}$_) => qq(\*In${prefix}$_ = \\&In${prefix}$SET_ALIAS{$_};)];
  $set_description{qq(In${prefix}$_)} = qq<An alias for In${prefix}$SET_ALIAS{$_}.>;
}

$r = qq(\@EXPORT_OK = qw(@{[map {$_->[0]} @set]});\n\n);
$r .= join '', map {$_->[1]."\n\n"} @set;

$r .= "=head1 COLLECTION NAMES\n\n=over 4\n\n";
for (sort {$a->[0] cmp $b->[0]} @set) {
  $r .= sprintf "=item C<%s>\n\n", $_->[0];
  $r .= sprintf "%s\n\n", $set_description{ $_->[0] }
    if $set_description{ $_->[0] };
}
$r .= "=back\n\n=cut\n\n";

$r;
}

sub footer () {
  my $example = [each %SET]->[0];
my $r = <<EOH;
@{[$PROP{pod_example}? "
=head1 EXAMPLE

$PROP{pod_example}":"
=head1 EXAMPLE

 use Char::Class::$ModuleName qw(In$ModuleName@{[$example]});
 if (\$s =~ /\\p{In$ModuleName@{[$example]}}/) {
   print \"Match!\\n\";
 }
"]}@{[$PROP{pod_see_also}? "
=head1 SEE ALSO

$PROP{pod_see_also}":'']}@{[$PROP{pod_license}? "
=head1 LICENSE

$PROP{pod_license}":"
=head1 LICENSE

Copyright 2016 Wakaba <wakaba\@suikawiki.org>.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
"]}
=cut

1;
### $ModuleName.pm ends here
EOH
$r;
}

print header () . table () . footer ();
