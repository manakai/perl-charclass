package Char::Normalize::FullwidthHalfwidth;
use strict;
use utf8;

our $VERSION=do{my @r=(q$Revision: 1.1 $=~/\d+/g);sprintf "%d."."%02d" x $#r,@r};

use Exporter;
push our @ISA, 'Exporter';

our @EXPORT_OK = qw/normalize_width/;

sub normalize_width ($) {
  my $sref = shift;
  $$sref =~ tr{\x{3000}\x{FF01}-\x{FF5E}\x{FF61}-\x{FF9F}\x{FFE0}-\x{FFE6}}
          { !-~。「」、・ヲァィゥェォャュョッーアイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワン\x{3099}\x{309A}\xA2\xA3\xAC\xAF\xA6\xA5\x{20A9}};
  return $sref;
} # normalize

=head1 LICENSE

Copyright 2008 Wakaba <w@suika.fam.cx>

This program is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

=cut

1;
## $Date: 2008/11/24 04:25:10 $
