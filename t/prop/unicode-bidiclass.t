package test::Char::Prop::Unicode::BidiClass;
use strict;
use warnings;
use Path::Class;
use lib file (__FILE__)->dir->parent->parent->subdir ('lib')->stringify;
use base qw(Test::Class);
use Char::Prop::Unicode::BidiClass;
use Test::More;
no warnings 'utf8';

sub _version : Test(1) {
  like $Char::Prop::Unicode::BidiClass::UnicodeVersion,
      qr{\A[0-9]+\.[0-9]+\.[0-9]+\z};
} # _version

sub _non_unicode : Test(4) {
  is unicode_bidi_class_n 0x110000, 'L';
  is unicode_bidi_class_n 0x110001, 'L';

  is unicode_bidi_class_c "\x{110000}", 'L';
  is unicode_bidi_class_c "\x{110001}", 'L';
} # _non_unicode

sub _l : Test(4) {
  is unicode_bidi_class_n 0x0041, 'L';
  is unicode_bidi_class_n 0x0042, 'L';

  is unicode_bidi_class_c "\x{0041}", 'L';
  is unicode_bidi_class_c "\x{0042}", 'L';
} # _l

sub _es : Test(4) {
  is unicode_bidi_class_n 0xFE62, 'ES';
  is unicode_bidi_class_n 0xFE63, 'ES';

  is unicode_bidi_class_c "\x{FF0B}", 'ES';
  is unicode_bidi_class_c "\x{FF0D}", 'ES';
} # _es

sub _bn : Test(24) {
  is unicode_bidi_class_n 0x0000, 'BN';
  is unicode_bidi_class_n 0x0001, 'BN';
  is unicode_bidi_class_n 0x001A, 'BN';
  is unicode_bidi_class_n 0x001B, 'BN';
  is unicode_bidi_class_n 0x007F, 'BN';
  is unicode_bidi_class_n 0x0080, 'BN';
  is unicode_bidi_class_n 0x0081, 'BN';
  is unicode_bidi_class_n 0x0082, 'BN';
  is unicode_bidi_class_n 0x0083, 'BN';
  is unicode_bidi_class_n 0x0084, 'BN';
  is unicode_bidi_class_n 0x0086, 'BN';
  is unicode_bidi_class_n 0x009F, 'BN';
  is unicode_bidi_class_n 0x00AD, 'BN';
  is unicode_bidi_class_n 0x200B, 'BN';
  is unicode_bidi_class_n 0xFFFE, 'BN';
  is unicode_bidi_class_n 0xFFFF, 'BN';
  is unicode_bidi_class_n 0x1D173, 'BN';
  is unicode_bidi_class_n 0x1D174, 'BN';
  is unicode_bidi_class_n 0x1FFFE, 'BN';
  is unicode_bidi_class_n 0x1FFFF, 'BN';
  is unicode_bidi_class_n 0x10FFFE, 'BN';
  is unicode_bidi_class_n 0x10FFFF, 'BN';

  is unicode_bidi_class_c "\x{0008}", 'BN';
  is unicode_bidi_class_c "\x{000E}", 'BN';
} # _bn

sub _al : Test(8) {
  is unicode_bidi_class_n 0x0604, 'AN';
  is unicode_bidi_class_n 0x0605, 'AN';
  is unicode_bidi_class_n 0x060B, 'AL';
  is unicode_bidi_class_n 0x060D, 'AL';
  is unicode_bidi_class_n 0x061B, 'AL';
  is unicode_bidi_class_n 0x061C, 'AL';
  is unicode_bidi_class_n 0x061D, 'AL';

  is unicode_bidi_class_c "\x{060B}", 'AL';
} # _al

sub _cs : Test(3) {
  is unicode_bidi_class_n 0x002C, 'CS';
  is unicode_bidi_class_n 0xFF1A, 'CS';

  is unicode_bidi_class_c "\x{002C}", 'CS';
} # _cs

sub _misc : Test(1) {
  is unicode_bidi_class_n 0x1E800, 'R';
} # _misc

__PACKAGE__->runtests;

1;

=head1 LICENSE

Copyright 2011 Wakaba <w@suika.fam.cx>.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
