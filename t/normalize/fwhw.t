use strict;
use warnings;
use utf8;
use Path::Class;
use lib glob file (__FILE__)->dir->parent->parent->subdir ('t_deps', 'modules', '*', 'lib');
use Test::More;
use Test::X1;
use Char::Normalize::FullwidthHalfwidth qw(normalize_width combine_voiced_sound_marks);

for my $test (
  ['ｱﾘｶﾞﾄｳ' => 'アリガトウ'],
  ['ﾄﾗﾝﾍﾟｯﾄ' => 'トランペット'],
  ['ﾚｵﾅﾙﾄﾞ･ﾀﾞ･ｳﾞｨﾝﾁ' => 'レオナルド・ダ・ヴィンチ'],
) {
  test {
    my $c = shift;
    my $s = $test->[0];
    normalize_width \$s;
    combine_voiced_sound_marks \$s;
    is $s, $test->[1];
    done $c;
  } n => 1;
}

run_tests;

=head1 LICENSE

Copyright 2014 Wakaba <wakaba@suikawiki.org>.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
