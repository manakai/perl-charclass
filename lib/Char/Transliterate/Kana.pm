package Char::Transliterate::Kana;
use strict;
use warnings;
use utf8;
our $VERSION = '1.0';
use Exporter::Lite;

our @EXPORT = qw(hiragana_to_katakana katakana_to_hiragana);

sub hiragana_to_katakana ($) {
  $_[0] =~ tr/あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろわゐゑをんゔがぎぐげござじずぜぞだぢづでどばびぶべぼぱぴぷぺぽぁぃぅぇぉゃゅょっゕゖ/アイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワヰヱヲンヴガギグゲゴザジズゼゾダヂヅデドバビブベボパピプペポァィゥェォャュョッヵヶ/
      if defined $_[0];
} # hiragana_to_katakana

sub katakana_to_hiragana ($) {
  $_[0] =~ tr/アイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワヰヱヲンヴガギグゲゴザジズゼゾダヂヅデドバビブベボパピプペポァィゥェォャュョッヵヶ/あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろわゐゑをんゔがぎぐげござじずぜぞだぢづでどばびぶべぼぱぴぷぺぽぁぃぅぇぉゃゅょっゕゖ/
      if defined $_[0];
} # katakana_to_hiragana

sub katakana_to_latin ($) {
  $_[0] =~ s/キ[ャュョ]//g;

}

1;
