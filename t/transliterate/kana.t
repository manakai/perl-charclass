use strict;
use warnings;
use utf8;
use Path::Tiny;
use lib path (__FILE__)->parent->parent->parent->child ('lib')->stringify;
use lib glob path (__FILE__)->parent->parent->parent->child ('t_deps', 'modules', '*', 'lib')->stringify;
use Char::Transliterate::Kana;
use Test::More;
use Test::X1;

for my $test (
  ['あいうえお' => 'アイウエオ'],
  ['となりのトトロ' => 'トナリノトトロ'],
  ['レオナルド・ダ・ビンチ' => 'レオナルド・ダ・ビンチ'],
  ['れおなるど・だ・びんち' => 'レオナルド・ダ・ビンチ'],
  ['あるふぁべっと' => 'アルファベット'],
  ['あじあのちず' => 'アジアノチズ'],
) {
  test {
    my $c = shift;
    my $s = $test->[0];
    hiragana_to_katakana $s;
    is $s, $test->[1];
    done $c;
  } n => 1;
}

for my $test (
  ['アイウエオ' => 'あいうえお'],
  ['トナリノトトロ' => 'となりのととろ'],
  ['レオナルド・ダ・ビンチ' => 'れおなるど・だ・びんち'],
  ['レオナルド・ダ・ヴィンチ' => 'れおなるど・だ・ゔぃんち'],
  ['ヒガシアジア' => 'ひがしあじあ'],
) {
  test {
    my $c = shift;
    my $s = $test->[0];
    katakana_to_hiragana $s;
    is $s, $test->[1];
    done $c;
  } n => 1;
}

run_tests;

=head1 LICENSE

Copyright 2014-2016 Wakaba <wakaba@suikawiki.org>.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
