
## This file is auto-generated.  Do not edit by hand!
use strict;

package Char::Class::JISX4052;
our $VERSION = '3.0';
use Carp;

our @EXPORT;
our @EXPORT_OK;

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


=head1 NAME

Char::Class::JISX4052 - Regular Expression Character Classes - C<JISX4052>


=cut
@EXPORT_OK = qw(InJISX4052Alphabetic InJISX4052AlphabeticBasic InJISX4052AlphabeticRecommended InJISX4052Digits InJISX4052KanaCharacter InJISX4052Kenten);

sub InJISX4052Alphabetic {
<<EOH;
0021	007E	
00A1	0101	
0112	0113	
012A	012B	
014C	014D	
016A	016B	
EOH
}

sub InJISX4052AlphabeticBasic {
<<EOH;
0021	007E	
EOH
}

sub InJISX4052AlphabeticRecommended {
<<EOH;
00A1	0101	
0112	0113	
012A	012B	
014C	014D	
016A	016B	
EOH
}

sub InJISX4052Digits {
<<EOH;
002C
002E
0030	0039	
EOH
}

sub InJISX4052KanaCharacter {
<<EOH;
3041	3093	
309D	309E	
30A1	30F6	
30FC	30FE	
EOH
}

sub InJISX4052Kenten {
<<EOH;
25B2	25B3	
25E9
25EB
25EE	25EF	
FE45	FE46	
EOH
}

=head1 COLLECTION NAMES

=over 4

=item C<InJISX4052Alphabetic>

=item C<InJISX4052AlphabeticBasic>

=item C<InJISX4052AlphabeticRecommended>

=item C<InJISX4052Digits>

=item C<InJISX4052KanaCharacter>

=item C<InJISX4052Kenten>

=back

=cut


=head1 EXAMPLE

 use Char::Class::JISX4052 qw(InJISX4052Alphabetic);
 if ($s =~ /\p{InJISX4052Alphabetic}/) {
   print "Match!\n";
 }

=head1 LICENSE

Copyright 2016 Wakaba <wakaba@suikawiki.org>.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
### JISX4052.pm ends here
