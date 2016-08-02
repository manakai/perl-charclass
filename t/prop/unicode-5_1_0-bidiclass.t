use strict;
use warnings;
use Path::Tiny;
use lib glob path (__FILE__)->parent->parent->parent->child ('t_deps/modules/*/lib')->stringify;
use Char::Prop::Unicode::5_1_0::BidiClass;
use Test::More;
use Test::X1;
no warnings 'utf8';

test {
  my $c = $_[0];
  is $Char::Prop::Unicode::5_1_0::BidiClass::UnicodeVersion, '5.1.0';
  done $c;
} n => 1, name => "version";

test {
  my $c = shift;
  is unicode_5_1_0_bidi_class_n 0x110000, 'L';
  is unicode_5_1_0_bidi_class_n 0x110001, 'L';

  is unicode_5_1_0_bidi_class_c "\x{110000}", 'L';
  is unicode_5_1_0_bidi_class_c "\x{110001}", 'L';
  done $c;
} n => 4, name => "non_unicode";

test {
  my $c = $_[0];
  is unicode_5_1_0_bidi_class_n 0x0041, 'L';
  is unicode_5_1_0_bidi_class_n 0x0042, 'L';

  is unicode_5_1_0_bidi_class_c "\x{0041}", 'L';
  is unicode_5_1_0_bidi_class_c "\x{0042}", 'L';
  done $c;
} n => 4, name => "l";

test {
  my $c = shift;
  is unicode_5_1_0_bidi_class_n 0xFE62, 'ES';
  is unicode_5_1_0_bidi_class_n 0xFE63, 'ES';

  is unicode_5_1_0_bidi_class_c "\x{FF0B}", 'ES';
  is unicode_5_1_0_bidi_class_c "\x{FF0D}", 'ES';
  done $c;
} n => 4, name => "es";

test {
  my $c = shift;
  is unicode_5_1_0_bidi_class_n 0x0000, 'BN';
  is unicode_5_1_0_bidi_class_n 0x0001, 'BN';
  is unicode_5_1_0_bidi_class_n 0x001A, 'BN';
  is unicode_5_1_0_bidi_class_n 0x001B, 'BN';
  is unicode_5_1_0_bidi_class_n 0x007F, 'BN';
  is unicode_5_1_0_bidi_class_n 0x0080, 'BN';
  is unicode_5_1_0_bidi_class_n 0x0081, 'BN';
  is unicode_5_1_0_bidi_class_n 0x0082, 'BN';
  is unicode_5_1_0_bidi_class_n 0x0083, 'BN';
  is unicode_5_1_0_bidi_class_n 0x0084, 'BN';
  is unicode_5_1_0_bidi_class_n 0x0086, 'BN';
  is unicode_5_1_0_bidi_class_n 0x009F, 'BN';
  is unicode_5_1_0_bidi_class_n 0x00AD, 'BN';
  is unicode_5_1_0_bidi_class_n 0x200B, 'BN';
  is unicode_5_1_0_bidi_class_n 0xFFFE, 'BN';
  is unicode_5_1_0_bidi_class_n 0xFFFF, 'BN';
  is unicode_5_1_0_bidi_class_n 0x1D173, 'BN';
  is unicode_5_1_0_bidi_class_n 0x1D174, 'BN';
  is unicode_5_1_0_bidi_class_n 0x1FFFE, 'BN';
  is unicode_5_1_0_bidi_class_n 0x1FFFF, 'BN';
  is unicode_5_1_0_bidi_class_n 0x10FFFE, 'BN';
  is unicode_5_1_0_bidi_class_n 0x10FFFF, 'BN';

  is unicode_5_1_0_bidi_class_c "\x{0008}", 'BN';
  is unicode_5_1_0_bidi_class_c "\x{000E}", 'BN';
  done $c;
} n => 24, name => "bn";

test {
  my $c = shift;
  is unicode_5_1_0_bidi_class_n 0x0604, 'AL';
  is unicode_5_1_0_bidi_class_n 0x0605, 'AL';
  is unicode_5_1_0_bidi_class_n 0x060B, 'AL';
  is unicode_5_1_0_bidi_class_n 0x060D, 'AL';
  is unicode_5_1_0_bidi_class_n 0x061B, 'AL';
  is unicode_5_1_0_bidi_class_n 0x061C, 'AL';
  is unicode_5_1_0_bidi_class_n 0x061D, 'AL';

  is unicode_5_1_0_bidi_class_c "\x{060B}", 'AL';
  done $c;
} n => 8, name => "al";

test {
  my $c = shift;
  is unicode_5_1_0_bidi_class_n 0x002C, 'CS';
  is unicode_5_1_0_bidi_class_n 0xFF1A, 'CS';

  is unicode_5_1_0_bidi_class_c "\x{002C}", 'CS';
  done $c;
} n => 3, name => "cs";

test {
  my $c = shift;
  is unicode_5_1_0_bidi_class_n 0x065F, 'AL'; # NSM

  is unicode_5_1_0_bidi_class_c "\x{065F}", 'AL'; # NSM
  done $c;
} n => 2, name => "unicode_6_0";

test {
  my $c = shift;
  is unicode_5_1_0_bidi_class_n 0x1E800, 'L';
  done $c;
} n => 1, name => "misc";

run_tests;

=head1 LICENSE

Copyright 2011-2016 Wakaba <wakaba@suikawiki.org>.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
