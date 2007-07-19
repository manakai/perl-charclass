## This file is auto-generated (at 2007-07-19T12:15:41Z).
## Do not edit by hand!
use strict;

package Char::Class::JaInput;
our $VERSION = '1.01';

use Exporter;
use vars qw(@EXPORT_OK @ISA $VERSION);
@ISA = qw(Exporter);

=head1 NAME

Char::Class::JaInput - Regular Expression Character Classes - C<JaInput>

=head1 DESCRIPTION

Character classes for Japanese input method


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

@EXPORT_OK = qw(InJaInputBoin InJaInputDigit InJaInputEnglishSymbol InJaInputHiraganaMin InJaInputKanaSymbol InJaInputKatakana InJaInputKatakanaSymbol InJaInputKeyKatakana InJaInputLatin InJaInputLatinCapital InJaInputLatinSmall InJaInputShiin InJaInputYomi);

sub InJaInputBoin {
<<EOH;
0061
0065
0069
006F
0075
EOH
}

sub InJaInputDigit {
<<EOH;
0030
0031
0032
0033
0034
0035
0036
0037
0038
0039
EOH
}

sub InJaInputEnglishSymbol {
<<EOH;
"#$%&'()*+,-./:;<=>?@{\N{YEN SIGN}}^_`{|}￣
EOH
}

sub InJaInputHiraganaMin {
<<EOH;
3041
3042
3043
3044
3045
3046
3047
3048
3049
304A
304B
304C
304D
304E
304F
3050
3051
3052
3053
3054
3055
3056
3057
3058
3059
305A
305B
305C
305D
305E
305F
3060
3061
3062
3063
3064
3065
3066
3067
3068
3069
306A
306B
306C
306D
306E
306F
3070
3071
3072
3073
3074
3075
3076
3077
3078
3079
307A
307B
307C
307D
307E
307F
3080
3081
3082
3083
3084
3085
3086
3087
3088
3089
308A
308B
308C
308D
308F
3092
3093
EOH
}

sub InJaInputKanaSymbol {
<<EOH;
3001
3002
300C
300D
309B
309C
30FB
30FC
EOH
}

sub InJaInputKatakana {
<<EOH;
30A1
30A2
30A3
30A4
30A5
30A6
30A7
30A8
30A9
30AA
30AB
30AC
30AD
30AE
30AF
30B0
30B1
30B2
30B3
30B4
30B5
30B6
30B7
30B8
30B9
30BA
30BB
30BC
30BD
30BE
30BF
30C0
30C1
30C2
30C3
30C4
30C5
30C6
30C7
30C8
30C9
30CA
30CB
30CC
30CD
30CE
30CF
30D0
30D1
30D2
30D3
30D4
30D5
30D6
30D7
30D8
30D9
30DA
30DB
30DC
30DD
30DE
30DF
30E0
30E1
30E2
30E3
30E4
30E5
30E6
30E7
30E8
30E9
30EA
30EB
30EC
30ED
30EF
30F2
30F3
30F4
30F5
30F6
EOH
}

sub InJaInputKatakanaSymbol {
<<EOH;
3001
3002
300C
300D
309B
309C
30FB
FF0D
EOH
}

sub InJaInputKeyKatakana {
<<EOH;
30A1
30A2
30A3
30A4
30A5
30A6
30A7
30A8
30A9
30AA
30AB
30AD
30AF
30B1
30B3
30B5
30B7
30B9
30BB
30BD
30BF
30C1
30C3
30C4
30C6
30C8
30CA
30CB
30CC
30CD
30CE
30CF
30D2
30D5
30D8
30DB
30DE
30DF
30E0
30E1
30E2
30E3
30E4
30E5
30E6
30E7
30E8
30E9
30EA
30EB
30EC
30ED
30EF
30F2
30F3
EOH
}

sub InJaInputLatin {
<<EOH;
0041
0042
0043
0044
0045
0046
0047
0048
0049
004A
004B
004C
004D
004E
004F
0050
0051
0052
0053
0054
0055
0056
0057
0058
0059
005A
0061
0062
0063
0064
0065
0066
0067
0068
0069
006A
006B
006C
006D
006E
006F
0070
0071
0072
0073
0074
0075
0076
0077
0078
0079
007A
EOH
}

sub InJaInputLatinCapital {
<<EOH;
0041
0042
0043
0044
0045
0046
0047
0048
0049
004A
004B
004C
004D
004E
004F
0050
0051
0052
0053
0054
0055
0056
0057
0058
0059
005A
EOH
}

sub InJaInputLatinSmall {
<<EOH;
0061
0062
0063
0064
0065
0066
0067
0068
0069
006A
006B
006C
006D
006E
006F
0070
0071
0072
0073
0074
0075
0076
0077
0078
0079
007A
EOH
}

sub InJaInputShiin {
<<EOH;
0062
0063
0064
0066
0067
0068
006A
006B
006C
006D
006E
0070
0071
0072
0073
0074
0076
0077
0078
0079
007A
EOH
}

sub InJaInputYomi {
<<EOH;
3041
3042
3043
3044
3045
3046
3047
3048
3049
304A
304B
304C
304D
304E
304F
3050
3051
3052
3053
3054
3055
3056
3057
3058
3059
305A
305B
305C
305D
305E
305F
3060
3061
3062
3063
3064
3065
3066
3067
3068
3069
306A
306B
306C
306D
306E
306F
3070
3071
3072
3073
3074
3075
3076
3077
3078
3079
307A
307B
307C
307D
307E
307F
3080
3081
3082
3083
3084
3085
3086
3087
3088
3089
308A
308B
308C
308D
308F
3092
3093
30A1
30A2
30A3
30A4
30A5
30A6
30A7
30A8
30A9
30AA
30AB
30AC
30AD
30AE
30AF
30B0
30B1
30B2
30B3
30B4
30B5
30B6
30B7
30B8
30B9
30BA
30BB
30BC
30BD
30BE
30BF
30C0
30C1
30C2
30C3
30C4
30C5
30C6
30C7
30C8
30C9
30CA
30CB
30CC
30CD
30CE
30CF
30D0
30D1
30D2
30D3
30D4
30D5
30D6
30D7
30D8
30D9
30DA
30DB
30DC
30DD
30DE
30DF
30E0
30E1
30E2
30E3
30E4
30E5
30E6
30E7
30E8
30E9
30EA
30EB
30EC
30ED
30EF
30F2
30F3
30FC
EOH
}

=head1 COLLECTION NAMES

=over 4

=item C<InJaInputBoin>

母音字 (JIS X 4063:2000 3.c))

=item C<InJaInputDigit>

数字 (JIS X 4064:2002 5.e))

=item C<InJaInputEnglishSymbol>

英字用特殊文字 (JIS X 6002-1980 4.2.4 (1))

=item C<InJaInputHiraganaMin>

平仮名 (最小集合) (JIS X 4064:2002 5.a))

=item C<InJaInputKanaSymbol>

仮名記号 (JIS X 4064:2002 5.c))

=item C<InJaInputKatakana>

片仮名 (最小集合) (JIS X 4064:2002 5.b))

=item C<InJaInputKatakanaSymbol>

片仮名用特殊文字 (JIS X 6002-1980 4.2.4 (2))

=item C<InJaInputKeyKatakana>

片仮名 (鍵盤) (JIS X 6002-1980 4.2.2)

=item C<InJaInputLatin>

英字 (JIS X 4064:2002 5.d))

=item C<InJaInputLatinCapital>

英字 (大文字) (JIS X 6002-1980 4.2.1 (1))

=item C<InJaInputLatinSmall>

英字 (小文字) (JIS X 6002-1980 4.2.1 (2))

=item C<InJaInputShiin>

子音字 (JIS X 4063:2000 3.b))

=item C<InJaInputYomi>

よみ文字列として交換を保証する文字 (JIS X 4062:1998 表1)

=back

=cut


=head1 EXAMPLE

 use Char::Class::JaInput;
 if ($s =~ /\p{InLatin}/) {
   print "Match!\n";
 }

=head1 SEE ALSO

JIS X 4062:1998, 『仮名漢字変換辞書交換形式 (Format for information interchange
for dictionaries of Japanese input method)』, 日本工業標準調査会 
(Japanese Industrial Standard Commitee (JISC), <http://www.jisc.go.jp/>), 1998.

JIS X 4063:2000, 『仮名漢字変換システムのための英字キー入力から仮名への変換方式
(Keystroke to KANA Transfer Method Using Latin Letter Key for Japanese Input 
Method)』, 日本工業標準調査会), 2000.

JIS X 4064:2002, 『仮名漢字変換システムの基本機能
(Basic functions of Kana‐Kanji conversion systems)』,
日本工業標準調査会, 2000.

JIS X 6002-1980, 『情報処理系けん盤配列 (Keyboard Layout for Information Processing
Using the JIS 7 Bit Coded Character Set)』,
日本工業標準調査会, 1980.

=head1 LICENSE

Copyright 2007 わかば (Wakaba) <w@suika.fam.cx>

This library and the library generated by it is free software;
you can redistribute them and/or modify them under the same
terms as Perl itself.

=cut

1;
### JaInput.pm ends here
