
## This file is auto-generated.  Do not edit by hand!
use strict;

package Char::Class::JaInput;
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

Char::Class::JaInput - Regular Expression Character Classes - C<JaInput>


=cut
@EXPORT_OK = qw(InJaInputBoin InJaInputDigit InJaInputEnglishSymbol InJaInputHiragana InJaInputHiraganaMin InJaInputKanaSymbol InJaInputKatakana InJaInputKatakanaMin InJaInputKatakanaSymbol InJaInputKeyKatakana InJaInputLatin InJaInputLatinCapital InJaInputLatinSmall InJaInputShiin InJaInputYomi);

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
0030	0039	
EOH
}

sub InJaInputEnglishSymbol {
<<EOH;
0021	002F	
003A	0040	
005B
005D	0060	
007B	007D	
00A5
203E
EOH
}

sub InJaInputHiragana {
<<EOH;
3041	308D	
308F
3092	3096	
EOH
}

sub InJaInputHiraganaMin {
<<EOH;
3041	308D	
308F
3092	3093	
EOH
}

sub InJaInputKanaSymbol {
<<EOH;
3001	3002	
300C	300D	
309B	309C	
30FB	30FC	
EOH
}

sub InJaInputKatakana {
<<EOH;
30A1	30ED	
30EF
30F2	30FA	
31F0	31FF	
EOH
}

sub InJaInputKatakanaMin {
<<EOH;
30A1	30ED	
30EF
30F2	30F6	
EOH
}

sub InJaInputKatakanaSymbol {
<<EOH;
3001	3002	
300C	300D	
309B	309C	
30FB
FF0D
EOH
}

sub InJaInputKeyKatakana {
<<EOH;
30A1	30AB	
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
30C3	30C4	
30C6
30C8
30CA	30CF	
30D2
30D5
30D8
30DB
30DE	30ED	
30EF
30F2	30F3	
EOH
}

sub InJaInputLatin {
<<EOH;
0041	005A	
0061	007A	
EOH
}

sub InJaInputLatinCapital {
<<EOH;
0041	005A	
EOH
}

sub InJaInputLatinSmall {
<<EOH;
0061	007A	
EOH
}

sub InJaInputShiin {
<<EOH;
0062	0064	
0066	0068	
006A	006E	
0070	0074	
0076	007A	
EOH
}

sub InJaInputYomi {
<<EOH;
3041	308D	
308F
3092	3093	
30A1	30ED	
30EF
30F2	30F3	
30FC
EOH
}

=head1 COLLECTION NAMES

=over 4

=item C<InJaInputBoin>

=item C<InJaInputDigit>

=item C<InJaInputEnglishSymbol>

=item C<InJaInputHiragana>

=item C<InJaInputHiraganaMin>

=item C<InJaInputKanaSymbol>

=item C<InJaInputKatakana>

=item C<InJaInputKatakanaMin>

=item C<InJaInputKatakanaSymbol>

=item C<InJaInputKeyKatakana>

=item C<InJaInputLatin>

=item C<InJaInputLatinCapital>

=item C<InJaInputLatinSmall>

=item C<InJaInputShiin>

=item C<InJaInputYomi>

=back

=cut


=head1 EXAMPLE

 use Char::Class::JaInput qw(InJaInputBoin);
 if ($s =~ /\p{InJaInputBoin}/) {
   print "Match!\n";
 }

=head1 LICENSE

Copyright 2016 Wakaba <wakaba@suikawiki.org>.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
### JaInput.pm ends here
