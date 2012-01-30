use strict;
use warnings;
use Path::Class;
use lib file (__FILE__)->dir->parent->parent->subdir ('lib')->stringify;

require Test::Simple;
my $case = 0;

my $err;

my @test = (
  sub {
    eval q{use Char::Class::XML qw/InXMLNameChar InXML_NCNameStartChar/; 1} or die $@;
    my $s = 'NAME';
    ok (scalar ($s =~ /\p{InXMLNameChar}/), '{NameChar}');
    ok (scalar ($s =~ /\p{InXMLNameChar}+/), '{NameChar}+');
    ok (scalar ($s =~ /^\p{InXMLNameChar}+$/), '^{NameChar}+$');
    ok (scalar ($s =~ /^\p{InXMLNameChar}\p{InXMLNameChar}+$/), '^{NameChar}{NameChar}+$');
    ok (scalar ($s =~ /^\p{InXML_NCNameStartChar}\p{InXMLNameChar}*$/), '^{NameStartChar}{NameChar}*$');
  }, 1..4,
  sub {
    package foo;
    eval q{use Char::Class::XML qw/InXML_NameStartChar InXMLNameChar/; 1} or die $@;
    my $s = 'NAME';
    main::ok (scalar ($s =~ /\p{InXML_NameStartChar}/), '{foo::NameStartChar}');
    main::ok (scalar ($s =~ /\p{InXML_NameStartChar}+/), '{foo::NameStartChar}+');
    main::ok (scalar ($s =~ /^\p{InXML_NameStartChar}+$/), '^{foo::NameStartChar}+$');
    main::ok (scalar ($s =~ /^\p{InXMLNameChar}\p{InXMLNameChar}+$/), '^{NameChar}{NameChar}+$');
    main::ok (scalar ($s =~ /^\p{InXML_NameStartChar}\p{InXMLNameChar}*$/), '^{NameStartChar}{NameChar}*$');
  }, 1..4,
  sub {
    eval q{use Char::Class::XML qw/InXMLNCNameChar10 InXML_NCNameStartChar10/; 1}
      or die $@;
    my $s = 'NAME';
    my $ncname = qr/\p{InXML_NCNameStartChar10}\p{InXMLNCNameChar10}*/;
    ok (scalar ($s =~ /^$ncname$/), 'ncname check');
    ok (scalar ($s =~ /^$ncname(?::$ncname)?$/), 'qname check');
    
    $s = qq(NAME\x{4E00}\x{8123});
    ok (scalar ($s =~ /^$ncname$/), 'ncname check');
    ok (scalar ($s =~ /^$ncname(?::$ncname)?$/), 'qname check');
    
    $s = qq(foo:bar);
    ok (!scalar ($s =~ /^$ncname$/), 'ncname check');
    ok (scalar ($s =~ /^$ncname(?::$ncname)?$/), 'qname check');
  },'','','','','',
);
$case += @test;
$case += @test;

Test::Simple->import (tests => $case);

for (1,2) {
for (@test) {&$_ if ref $_}
}

1;

=head1 LICENSE

Copyright 2003-2010 Wakaba <w@suika.fam.cx>.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
