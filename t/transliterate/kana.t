use strict;
use warnings;
use utf8;
use Path::Class;
use lib file (__FILE__)->dir->parent->parent->subdir ('lib')->stringify;
use lib glob file (__FILE__)->dir->parent->parent->subdir ('t_deps', 'modules', '*', 'lib')->stringify;
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
