package Char::Normalize::FullwidthHalfwidth;
use strict;
use warnings;
use utf8;
our $VERSION = '3.0';

use Exporter;
push our @ISA, 'Exporter';

our @EXPORT_OK = qw/normalize_width combine_voiced_sound_marks/;

sub normalize_width ($) {
  my $sref = shift;
  $$sref =~ tr{\x{3000}\x{FF01}-\x{FF5E}\x{FF61}-\x{FF9F}\x{FFE0}-\x{FFE6}}
          { !-~。「」、・ヲァィゥェォャュョッーアイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワン\x{3099}\x{309A}\xA2\xA3\xAC\xAF\xA6\xA5\x{20A9}};
  return $sref;
} # normalize_width

sub combine_voiced_sound_marks ($) {
  my $sref = $_[0];
  $$sref =~ s{([かきくけこさしすせそたちつてとはひふへほカキクケコサシスセソタチツテトハヒフヘホ])\x{3099}}{chr (1 + ord $1)}ge;
  $$sref =~ s{ウ\x{3099}}{ヴ}g;
  $$sref =~ s{([はひふへほハヒフヘホ])\x{309A}}{chr (2 + ord $1)}ge;
  return $sref;
} # combine_voiced_sound_marks

push @EXPORT_OK, qw(get_fwhw_normalized);
sub get_fwhw_normalized ($) {
  my $s = $_[0];
  $s =~ tr/\x{FF5E}\x{2212}/\x{301C}-/;
  normalize_width \$s;
  combine_voiced_sound_marks \$s;
  return $s;
} # get_fwhw_normalized

1;

=head1 LICENSE

Copyright 2008-2014 Wakaba <wakaba@suikawiki.org>.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
