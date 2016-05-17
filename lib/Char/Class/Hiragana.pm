## This file is auto-generated.  Do not edit by hand!
use strict;

package Char::Class::Hiragana;
our $VERSION = '2.0';

use Exporter;
use vars qw(@EXPORT_OK @ISA $VERSION);
@ISA = qw(Exporter);

=head1 NAME

Char::Class::Hiragana - Regular Expression Character Classes - C<Hiragana>


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

@EXPORT_OK = qw(InHiraganaAll InHiraganaDigraph InHiraganaHatsuon InHiraganaSeion InHiraganaSemiVoiced InHiraganaSmall InHiraganaVoiced);

sub InHiraganaAll {
<<EOH;
3041	3096	
309D	309F	
1B001
EOH
}

sub InHiraganaDigraph {
<<EOH;
309F
EOH
}

sub InHiraganaHatsuon {
<<EOH;
3098
EOH
}

sub InHiraganaSeion {
<<EOH;
3042
3044
3046
3048
304A	304B	
304D
304F
3051
3053
3055
3057
3059
305B
305D
305F
3061
3064
3066
3068
306A	306F	
3072
3075
3078
307B
307E	3082	
3084
3086
3088	308D	
308F	3092	
EOH
}

sub InHiraganaSemiVoiced {
<<EOH;
3071
3074
3077
307A
307D
EOH
}

sub InHiraganaSmall {
<<EOH;
3041
3043
3045
3047
3049
3063
3083
3085
3087
308E
3095	3096	
EOH
}

sub InHiraganaVoiced {
<<EOH;
304C
304E
3050
3052
3054
3056
3058
305A
305C
305E
3060
3062
3065
3067
3069
3070
3073
3076
3079
307C
3094
EOH
}

=head1 COLLECTION NAMES

=over 4

=item C<InHiraganaAll>

=item C<InHiraganaDigraph>

=item C<InHiraganaHatsuon>

=item C<InHiraganaSeion>

=item C<InHiraganaSemiVoiced>

=item C<InHiraganaSmall>

=item C<InHiraganaVoiced>

=back

=cut


=head1 EXAMPLE

 use Char::Class::Hiragana qw(InHiraganaSemiVoiced);
 if ($s =~ /\p{InHiraganaSemiVoiced}/) {
   print "Match!\n";
 }

=head1 LICENSE

Copyright 2016 Wakaba <wakaba@suikawiki.org>.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
### Hiragana.pm ends here
