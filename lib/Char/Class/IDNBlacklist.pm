## This file is auto-generated (at 2011-05-05T08:09:13Z).
## Do not edit by hand!
use strict;

package Char::Class::IDNBlacklist;
our $VERSION = '1.0.1304582953';

use Exporter;
use vars qw(@EXPORT_OK @ISA $VERSION);
@ISA = qw(Exporter);

=head1 NAME

Char::Class::IDNBlacklist - Regular Expression Character Classes - C<IDNBlacklist>

=head1 DESCRIPTION

IDN blacklisted characters, as maintained by the Mozilla project


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

@EXPORT_OK = qw(InIDNBlacklistChars);

sub InIDNBlacklistChars {
<<EOH;
0020
00A0
00BC
00BD
00BE
01C3
02D0
0337
0338
0589
05C3
05F4
0609
060A
066A
06D4
0701
0702
0703
0704
115F
1160
1735
2000
2001
2002
2003
2004
2005
2006
2007
2008
2009
200A
200B
2024
2027
2028
2029
202F
2039
203A
2041
2044
2052
205F
2153
2154
2155
2156
2157
2158
2159
215A
215B
215C
215D
215E
215F
2215
2236
23AE
2571
29F6
29F8
2AFB
2AFD
2FF0
2FF1
2FF2
2FF3
2FF4
2FF5
2FF6
2FF7
2FF8
2FF9
2FFA
2FFB
3000
3002
3014
3015
3033
3164
321D
321E
33AE
33AF
33C6
33DF
A789
FE14
FE15
FE3F
FE5D
FE5E
FEFF
FF0E
FF0F
FF61
FFA0
FFF9
FFFA
FFFB
FFFC
FFFD
EOH
}

=head1 COLLECTION NAMES

=over 4

=item C<InIDNBlacklistChars>

Blacklisted characters

=back

=cut


=head1 EXAMPLE

 use Char::Class::IDNBlacklist qw(InIDNBlacklistChars);
 if ($s =~ /\p{InIDNBlacklistChars}/) {
   print "Match!\n";
 }

=head1 SEE ALSO

<http://mxr.mozilla.org/mozilla-central/source/modules/libpref/src/init/all.js>.

=head1 LICENSE

Copyright 2011 わかば (Wakaba) <w@suika.fam.cx>

This library and the library generated by it is free software;
you can redistribute them and/or modify them under the same
terms as Perl itself.

=cut

1;
### IDNBlacklist.pm ends here
