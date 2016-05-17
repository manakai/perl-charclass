## This file is auto-generated.  Do not edit by hand!
use strict;

package Char::Class::Alphabet;
our $VERSION = '2.0';

use Exporter;
use vars qw(@EXPORT_OK @ISA $VERSION);
@ISA = qw(Exporter);

=head1 NAME

Char::Class::Alphabet - Regular Expression Character Classes - C<Latin>


=cut

sub import ($;@) {
  my ($self, @sub) = (shift, @_);
  for (@sub) {
    no strict 'refs';
    *{'main::'.$_} = \&{$_};
  }
  $Exporter::ExportLevel = 1;
  $self->SUPER::import (@_);
  $Exporter::ExportLevel = 0;
}

@EXPORT_OK = qw(InLatinTCVN6909_2001 InLatinTCVN6909 InLatinVietnamese);

sub InLatinTCVN6909_2001 {
<<EOH;
0020	007E	
00A0
00C0	00C3	
00C8	00CA	
00CC	00CD	
00D2	00D5	
00D9	00DA	
00DD
00E0	00E3	
00E8	00EA	
00EC	00ED	
00F2	00F5	
00F9	00FA	
00FD
0102	0103	
0110	0111	
0128	0129	
0168	0169	
01A0	01A1	
01AF	01B0	
0300	0303	
0306
0309
031B
0323
1EA0	1EF9	
201C	201D	
EOH
}

*InLatinTCVN6909 = \&InLatinTCVN6909_2001;

*InLatinVietnamese = \&InLatinTCVN6909_2001;

=head1 COLLECTION NAMES

=over 4

=item C<InLatinTCVN6909>

An alias for InLatinTCVN6909_2001.

=item C<InLatinTCVN6909_2001>

=item C<InLatinVietnamese>

An alias for InLatinTCVN6909_2001.

=back

=cut


=head1 EXAMPLE

 use Char::Class::Alphabet qw(InAlphabetTCVN6909_2001);
 if ($s =~ /\p{InAlphabetTCVN6909_2001}/) {
   print "Match!\n";
 }

=head1 LICENSE

Copyright 2016 Wakaba <wakaba@suikawiki.org>.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
### Alphabet.pm ends here
