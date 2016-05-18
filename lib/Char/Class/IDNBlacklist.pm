
## This file is auto-generated.  Do not edit by hand!
use strict;

package Char::Class::IDNBlacklist;
our $VERSION = '3.0';
use Carp;

our @EXPORT;
our @EXPORT_OK;

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


=head1 NAME

Char::Class::IDNBlacklist - Regular Expression Character Classes - C<IDNBlacklist>


=cut
@EXPORT_OK = qw(InIDNBlacklistChars);

sub InIDNBlacklistChars {
<<EOH;
0020
00A0
00BC	00BE	
01C3
02D0
0337	0338	
0589
05C3
05F4
0609	060A	
066A
06D4
0701	0704	
115F	1160	
1735
2000	200B	
200E	200F	
2024
2027	202F	
2039	203A	
2041
2044
2052
205F
2153	215F	
2215
2236
23AE
2571
29F6
29F8
2AFB
2AFD
2FF0	2FFB	
3000
3002
3014	3015	
3033
3164
321D	321E	
33AE	33AF	
33C6
33DF
A789
FE14	FE15	
FE3F
FE5D	FE5E	
FEFF
FF0E	FF0F	
FF61
FFA0
FFF9	FFFD	
EOH
}

=head1 COLLECTION NAMES

=over 4

=item C<InIDNBlacklistChars>

=back

=cut


=head1 EXAMPLE

 use Char::Class::IDNBlacklist qw(InIDNBlacklistChars);
 if ($s =~ /\p{InIDNBlacklistChars}/) {
   print "Match!\n";
 }

=head1 LICENSE

Copyright 2016 Wakaba <wakaba@suikawiki.org>.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
### IDNBlacklist.pm ends here
