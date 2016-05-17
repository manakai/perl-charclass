package Char::Transliterate::Kana;
use strict;
use warnings;
use utf8;
our $VERSION = '2.0';
use Carp;

our @EXPORT = qw(hiragana_to_katakana katakana_to_hiragana);

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
