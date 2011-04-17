use strict;
## Check whether perl is buggy or not
require Test::Simple;
my $case = 0;

my $err;

my @test = (
  sub {
    my $s = 'NAME';
    ok (scalar ($s =~ /\p{InBasicLatin}/), '\p support of perl');
    ok (scalar ($s =~ /\p{InBasicLatin}+/), '\p+ support of perl');
    ok (scalar ($s =~ /^\p{InBasicLatin}+$/), '^\p+$ support of perl');
      ## perl 5.8.0 has bug??
    ok (scalar ($s =~ /^\p{InBasicLatin}\p{InBasicLatin}+$/), '^\p\p+$ support of perl');
    ok (scalar ($s =~ /^\p{InBasicLatin}\p{InBasicLatin}*$/), '^\p\p*$ support of  perl');
  },1..4,
  sub {
    package foo;
    my $s = 'NAME';
    main::ok (scalar ($s =~ /\p{InBasicLatin}/), 'NSed \p support of perl');
    main::ok (scalar ($s =~ /\p{InBasicLatin}+/), 'NSed \p+ support of perl');
    main::ok (scalar ($s =~ /^\p{InBasicLatin}+$/), 'NSed ^\p+$ support of perl');
    main::ok (scalar ($s =~ /^\p{InBasicLatin}\p{InBasicLatin}+$/), 'NSed ^\p\p+$ support of perl');
    main::ok (scalar ($s =~ /^\p{InBasicLatin}\p{InBasicLatin}*$/), 'NSed ^\p\p*$ support of perl');
  }, 1..4,
);
$case += @test;
$case += @test;

Test::Simple->import (tests => $case);

for (1,2) {
for (@test) {&$_ if ref $_}
}

exit;
/\p{InUndefinedSet}/;
## Older perl (such as 5.6.1) cannot run if undefined
## (not defined by perl nor provided by "use"ed module) character class 
## is in use.

=head1 LICENSE

Copyright 2003, 2007 Wakaba <w@suika.fam.cx>

This program is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

=cut

1; # $Date: 2007/07/19 13:26:22 $
