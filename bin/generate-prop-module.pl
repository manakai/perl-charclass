#!/usr/bin/perl
use strict;
use warnings;

my $prop = shift;
my $DEFS = {
  'Age' => {
    default_value => 'unassigned',
    class_name => 'Age',
    function_name => 'age',
    prop_name => 'Age',
    references => [
      q{UAX #44: Unicode Character Database
        <https://www.unicode.org/reports/tr44/#Age>.},
      q{<https://www.unicode.org/Public/UNIDATA/DerivedAge.txt>.},
    ],
  },
  'BidiClass' => {
    default_value => 'L',
    class_name => 'BidiClass',
    function_name => 'bidi_class',
    prop_name => 'Bidi_Class',
    references => [
      q{UAX #9: Unicode Bidirectional Algorithm
        <https://www.unicode.org/reports/tr9/#Bidirectional_Character_Types>.},
      q{UAX #44: Unicode Character Database
        <https://www.unicode.org/reports/tr44/#Bidi_Class>.},
      q{<https://www.unicode.org/Public/UNIDATA/extracted/DerivedBidiClass.txt>.},
    ],
  },
  '5_1_0::BidiClass' => {
    default_value => 'L',
    class_name => '5_1_0::BidiClass',
    function_name => '5_1_0_bidi_class',
    prop_name => 'Bidi_Class',
    references => [
      q{UAX #9: Unicode Bidirectional Algorithm
        <https://www.unicode.org/reports/tr9/#Bidirectional_Character_Types>.},
      q{UAX #44: Unicode Character Database
        <https://www.unicode.org/reports/tr44/#Bidi_Class>.},
      q{<https://www.unicode.org/Public/5.1.0/ucd/extracted/DerivedBidiClass.txt>.},
    ],
  },
};

my $DEF = $DEFS->{$prop} or die;

my $map = [];
my $values = [$DEF->{default_value}];
my $value_to_index = {$DEF->{default_value} => 0};
my $unicode_version;

while (<>) {
  if (/^([0-9A-F]+)\.\.([0-9A-F]+)\s*;\s+(\S+)\s/) {
    my $from = hex $1;
    my $to = hex $2;
    my $value = $3;
    $value_to_index->{$value} //= do {
      push @$values, $value;
      $value_to_index->{$value} = $#$values;
      $#$values;
    };
    $map->[$_] = $value_to_index->{$value} for $from..$to;
  } elsif (/^([0-9A-F]+)\s+;\s+(\S+)\s/) {
    my $from = hex $1;
    my $value = $2;
    $value_to_index->{$value} //= do {
      push @$values, $value;
      $value_to_index->{$value} = $#$values;
      $#$values;
    };
    $map->[$_] = $value_to_index->{$value} for $from;
  } elsif (not $unicode_version and /^\# \S+?-([0-9.]+)\.txt$/) {
    $unicode_version = $1;
  }
}

use Data::Dumper;

print "package Char::Prop::Unicode::$DEF->{class_name};
use strict;
use warnings;
our \$VERSION = '2.0';

## This file is auto-generated.  Do not edit by hand!

";

if ($unicode_version) {
  print q{our $UnicodeVersion = '}, $unicode_version, q{';};
}

print "
our \$VALUE = ";

my $v = Dumper $values;
$v =~ s/\$VAR1 = //;
print $v;

print "our \$DATA = <<'EOH';
";
for (0x0000..0x10FFFF) {
  print pack 'C', 0x40 + ($map->[$_] || 0);
}

print qq{
EOH
chop \$DATA;

our \@EXPORT = qw(
  unicode_$DEF->{function_name}_n
  unicode_$DEF->{function_name}_c
);
};

print q{
use Carp;
sub import ($;@) {
  my $from_class = shift;
  my ($to_class, $file, $line) = caller;
  no strict 'refs';
  for (@_ ? @_ : @{$from_class . '::EXPORT'}) {
    my $code = $from_class->can ($_)
        or croak qq{"$_" is not exported by the $from_class module at $file line $line};
    *{$to_class . '::' . $_} = $code;
  }
} # import
};
print qq{
no warnings 'uninitialized';
no warnings 'substr';

sub unicode_$DEF->{function_name}_n (\$) {
  return \$VALUE->[(unpack 'C', (substr \$DATA, \$_[0], 1 or "\\x40")) - 0x40];
} # unicode_$DEF->{function_name}_n

sub unicode_$DEF->{function_name}_c (\$) {
  return \$VALUE->[(unpack 'C', (substr \$DATA, ord \$_[0], 1 or "\\x40")) - 0x40];
} # unicode_$DEF->{function_name}_c

1;

__END__

=head1 NAME

Char::Prop::Unicode::$DEF->{class_name} - Unicode $unicode_version $DEF->{prop_name} property

=head1 SYNOPSIS

  use Char::Prop::Unicode::$DEF->{class_name};
  
  warn unicode_$DEF->{function_name}_n 0x4E00;
  warn unicode_$DEF->{function_name}_c "\\x{4E00}";

=head1 DESCRIPTION

The C<Char::Prop::Unicode::$DEF->{class_name}> module exports two
functions, C<unicode_$DEF->{function_name}_n> and
C<unicode_$DEF->{function_name}_c>, both return the value of Unicode
$unicode_version $DEF->{prop_name} property for the specified
character (or code position).  C<unicode_$DEF->{function_name}_n>
accepts a number representing the code position, while
C<unicode_$DEF->{function_name}_c> expects a (utf8-flagged) character,
as the first and only argument.

=head1 UNICODE VERSION

This module supports Unicode $unicode_version.

@{[ $DEF->{class_name} =~ /^\d+/ ? q{

This module will I<not> be updated even when a newer version of
Unicode is released.

} : q{

This module is expected to be updated once a newer version of Unicode
is released.

} ]}

=head1 PROPERTY VALUES

The functions return one of following property values:

=over 4

};

for my $value (@$values) {
  print qq{

=item - C<$value>

  };
}

print qq{

=back

=head1 SEE ALSO

@{[ join "\n\n", map { s/\s+/ /g; $_ } @{$DEF->{references} or []} ]}

=head1 DISTRIBUTION

This module is part of the CharClass project.  The latest version of
the CharClass package is available from
<https://suika.suikawiki.org/www/charclass/readme>.

=head1 AUTHOR

This module is generated by C<@{[[split m{/}, $0]->[-1]]}>, which is written by Wakaba
<wakaba\@suikawiki.org>.

The module contains character property data extracted from Unicode
Data Files distributed by Unicode Consortium under the terms
<https://www.unicode.org/copyright.html#Exhibit1>.

=head1 LICENSE

Copyright 2011-2022 Wakaba <wakaba\@suikawiki.org>.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

};
