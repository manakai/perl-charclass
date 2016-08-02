package test::Char::Prop::Unicode::Age;
use strict;
use warnings;
use Path::Tiny;
use lib path (__FILE__)->parent->parent->parent->child ('lib')->stringify;
use base qw(Test::Class);
use Char::Prop::Unicode::Age;
use Test::More;
no warnings 'utf8';

sub _version : Test(1) {
  like $Char::Prop::Unicode::Age::UnicodeVersion,
      qr{\A[0-9]+\.[0-9]+\.[0-9]+\z};
} # _version

sub _v11 : Test(14) {
  is unicode_age_n 0x0000, '1.1';
  is unicode_age_n 0x0045, '1.1';
  is unicode_age_n 0x00AD, '1.1';
  is unicode_age_n 0x037A, '1.1';
  is unicode_age_n 0x4E00, '1.1';
  is unicode_age_n 0xFFFD, '1.1';
  is unicode_age_n 0xFFFF, '1.1';

  is unicode_age_c "\x{0000}", '1.1';
  is unicode_age_c "\x{0045}", '1.1';
  is unicode_age_c "\x{00AD}", '1.1';
  is unicode_age_c "\x{037A}", '1.1';
  is unicode_age_c "\x{4E00}", '1.1';
  is unicode_age_c "\x{FFFD}", '1.1';
  is unicode_age_c "\x{FFFF}", '1.1';
} # _v11

sub _v20 : Test(30) {
  is unicode_age_n 0x0591, '2.0';
  is unicode_age_n 0x0592, '2.0';
  is unicode_age_n 0x05A1, '2.0';
  is unicode_age_n 0x05C4, '2.0';
  is unicode_age_n 0x1E9B, '2.0';
  is unicode_age_n 0xAC00, '2.0';
  is unicode_age_n 0xD7A3, '2.0';
  is unicode_age_n 0xD800, '2.0';
  is unicode_age_n 0xDC00, '2.0';
  is unicode_age_n 0xDFFF, '2.0';
  is unicode_age_n 0x1FFFE, '2.0';
  is unicode_age_n 0x1FFFF, '2.0';
  is unicode_age_n 0xFFFFF, '2.0';
  is unicode_age_n 0x10FFFE, '2.0';
  is unicode_age_n 0x10FFFF, '2.0';

  is unicode_age_c "\x{0591}", '2.0';
  is unicode_age_c "\x{0592}", '2.0';
  is unicode_age_c "\x{05A1}", '2.0';
  is unicode_age_c "\x{05C4}", '2.0';
  is unicode_age_c "\x{1E9B}", '2.0';
  is unicode_age_c "\x{AC00}", '2.0';
  is unicode_age_c "\x{D7A3}", '2.0';
  is unicode_age_c "\x{D800}", '2.0';
  is unicode_age_c "\x{DC00}", '2.0';
  is unicode_age_c "\x{DFFF}", '2.0';
  is unicode_age_c "\x{1FFFE}", '2.0';
  is unicode_age_c "\x{1FFFF}", '2.0';
  is unicode_age_c "\x{FFFFF}", '2.0';
  is unicode_age_c "\x{10FFFE}", '2.0';
  is unicode_age_c "\x{10FFFF}", '2.0';
} # _v20

sub _v21 : Test(4) { # 2.1.2
  is unicode_age_n 0x20AC, '2.1';
  is unicode_age_n 0xFFFC, '2.1';

  is unicode_age_c "\x{20AC}", '2.1';
  is unicode_age_c "\x{FFFC}", '2.1';
} # _v21

sub _v30 : Test(11) {
  is unicode_age_n 0x01F6, '3.0';
  is unicode_age_n 0x01F7, '3.0';
  is unicode_age_n 0x01F9, '3.0';
  is unicode_age_n 0x02DF, '3.0';
  is unicode_age_n 0x3400, '3.0';
  is unicode_age_n 0x4DB5, '3.0';
  is unicode_age_n 0xFFFB, '3.0';

  is unicode_age_c "\x{01F6}", '3.0';
  is unicode_age_c "\x{01F7}", '3.0';
  is unicode_age_c "\x{01F9}", '3.0';
  is unicode_age_c "\x{02DF}", '3.0';
} # _v30

sub _v31 : Test(14) {
  is unicode_age_n 0x03F4, '3.1';
  is unicode_age_n 0x03F5, '3.1';
  is unicode_age_n 0xFDD0, '3.1';
  is unicode_age_n 0xFDEF, '3.1';
  is unicode_age_n 0x10300, '3.1';
  is unicode_age_n 0x1031E, '3.1';
  is unicode_age_n 0x10321, '3.1';
  is unicode_age_n 0xE0001, '3.1';
  is unicode_age_n 0xE0020, '3.1';
  is unicode_age_n 0xE007F, '3.1';

  is unicode_age_c "\x{03F4}", '3.1';
  is unicode_age_c "\x{FDD0}", '3.1';
  is unicode_age_c "\x{10300}", '3.1';
  is unicode_age_c "\x{E007F}", '3.1';
} # _v31

sub _v32 : Test(10) {
  is unicode_age_n 0x0220, '3.2';
  is unicode_age_n 0x034F, '3.2';
  is unicode_age_n 0x0364, '3.2';
  is unicode_age_n 0xFE73, '3.2';
  is unicode_age_n 0xFF60, '3.2';

  is unicode_age_c "\x{0220}", '3.2';
  is unicode_age_c "\x{034F}", '3.2';
  is unicode_age_c "\x{0364}", '3.2';
  is unicode_age_c "\x{FE73}", '3.2';
  is unicode_age_c "\x{FF60}", '3.2';
} # _v32

sub _v40 : Test(8) {
  is unicode_age_n 0x0221, '4.0';
  is unicode_age_n 0x0234, '4.0';
  is unicode_age_n 0x10000, '4.0';
  is unicode_age_n 0xE01EF, '4.0';

  is unicode_age_c "\x{0221}", '4.0';
  is unicode_age_c "\x{0234}", '4.0';
  is unicode_age_c "\x{10000}", '4.0';
  is unicode_age_c "\x{E01EF}", '4.0';
} # _v40

sub _v41 : Test(8) {
  is unicode_age_n 0x0237, '4.1';
  is unicode_age_n 0x060B, '4.1';
  is unicode_age_n 0x10FC, '4.1';
  is unicode_age_n 0x1D6A5, '4.1';

  is unicode_age_c "\x{0237}", '4.1';
  is unicode_age_c "\x{060B}", '4.1';
  is unicode_age_c "\x{10FC}", '4.1';
  is unicode_age_c "\x{1D6A5}", '4.1';
} # _v41

sub _v50 : Test(8) {
  is unicode_age_n 0x0242, '5.0';
  is unicode_age_n 0x04CF, '5.0';
  is unicode_age_n 0x1091F, '5.0';
  is unicode_age_n 0x1D7CB, '5.0';

  is unicode_age_c "\x{0242}", '5.0';
  is unicode_age_c "\x{04CF}", '5.0';
  is unicode_age_c "\x{1091F}", '5.0';
  is unicode_age_c "\x{1D7CB}", '5.0';
} # _v50

sub _v51 : Test(8) {
  is unicode_age_n 0x0370, '5.1';
  is unicode_age_n 0x03CF, '5.1';
  is unicode_age_n 0x1093F, '5.1';
  is unicode_age_n 0x1F093, '5.1';

  is unicode_age_c "\x{0370}", '5.1';
  is unicode_age_c "\x{03CF}", '5.1';
  is unicode_age_c "\x{1093F}", '5.1';
  is unicode_age_c "\x{1F093}", '5.1';
} # _v51

sub _v52 : Test(4) {
  is unicode_age_n 0x0524, '5.2';
  is unicode_age_n 0x2B734, '5.2';

  is unicode_age_c "\x{0524}", '5.2';
  is unicode_age_c "\x{2B734}", '5.2';
} # _v52

sub _v60 : Test(4) {
  is unicode_age_n 0x0526, '6.0';
  is unicode_age_n 0x2B81D, '6.0';

  is unicode_age_c "\x{0526}", '6.0';
  is unicode_age_c "\x{2B81D}", '6.0';
} # _v60

sub _unassigned : Test(4) {
  is unicode_age_n 0x05FF, 'unassigned';
  is unicode_age_n 0x2FF1F, 'unassigned';

  is unicode_age_c "\x{05FF}", 'unassigned';
  is unicode_age_c "\x{2FF8F}", 'unassigned';
} # _unassigned

sub _non_unicode : Test(4) {
  is unicode_age_n 0x110000, 'unassigned';
  is unicode_age_n 0x110001, 'unassigned';

  is unicode_age_c "\x{110000}", 'unassigned';
  is unicode_age_c "\x{110001}", 'unassigned';
} # _non_unicode

__PACKAGE__->runtests;

1;

=head1 LICENSE

Copyright 2011-2016 Wakaba <wakaba@suikawiki.org>.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
