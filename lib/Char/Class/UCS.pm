## This file is auto-generated (at 2007-07-19T12:21:05Z).
## Do not edit by hand!
use strict;

package Char::Class::UCS;
our $VERSION = '1.02';

use Exporter;
use vars qw(@EXPORT_OK @ISA $VERSION);
@ISA = qw(Exporter);

=head1 NAME

Char::Class::UCS - Regular Expression Character Classes - C<UCS>


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

@EXPORT_OK = qw(InUCSAeganNumbers InUCSAlphabeticPresentationForms InUCSAlternateFormatCharactersExtended InUCSArabicExtended InUCSArabicPresentationFormsA InUCSArabicPresentationFormsB InUCSArmenian InUCSArrows InUCSBasicArabic InUCSBasicGeorgian InUCSBasicGreek InUCSBasicHangul InUCSBasicHebrew InUCSBasicLatin InUCSBasicMyanmar InUCSBasicTibetan InUCSBengali InUCSBiDirectionalFormatEmbeddings InUCSBiDirectionalFormatMarks InUCSBlockElements InUCSBopomofo InUCSBoxDrawing InUCSBraillePatterns InUCSBuhid InUCSByzantineMusicalSymbols InUCSCharacterShapingSelectors InUCSCherokee InUCSCombiningDiacriticalMarks InUCSCombiningDiacriticalMarksForSymbols InUCSCombiningHalfMarks InUCSControlPictures InUCSCurrencySymbols InUCSCypriotSyllabary InUCSCyrillic InUCSCyrillicSupplementary InUCSDeseret InUCSDevanagari InUCSDingbats InUCSEnclosedAlphanumerics InUCSEnclosedCJKLettersAndMonths InUCSEthiopic InUCSEtruscan InUCSExtendedMyanmar InUCSFormatSeparators InUCSGeneralFormatCharacters InUCSGeneralPunctuation InUCSGeometricShapes InUCSGeorgianExtended InUCSGothic InUCSGreekExtended InUCSGreekSymbolsAndCoptic InUCSGujarati InUCSGurmukhi InUCSHalfwidthAndFullwidthForms InUCSHangulCompatibilityJamo InUCSHangulFillCharacters InUCSHangulJamo InUCSHangulSyllables InUCSHanunoo InUCSHebrewExtended InUCSHiragana InUCSIPAExtensions InUCSIdeographicDescriptionCharacters InUCSKangxiRadicals InUCSKannada InUCSKatakana InUCSKatakanaPhoneticExtensions InUCSKhmer InUCSLao InUCSLatin1Supplement InUCSLatinExtendedA InUCSLatinExtendedAdditional InUCSLatinExtendedB InUCSLetterlikeSymbols InUCSLimbu InUCSLinearBIdeograms InUCSLinearBSyllabary InUCSMalayalam InUCSMathematicalOperators InUCSMiscellaneousSymbols InUCSMiscellaneousTechnical InUCSMiscllaneousMathmaticalSymbols InUCSMongolian InUCSNumberForms InUCSNumericShapeSelectors InUCSOgham InUCSOpticalCharacterRecognition InUCSOriya InUCSOsmanya InUCSPart2 InUCSPrivateUseArea InUCSPrivateUseGroups InUCSPrivateUsePlanes InUCSRunic InUCSScriptSpecificFormatCharacters InUCSShavian InUCSSinhala InUCSSip InUCSSmallFormVariants InUCSSmp InUCSSpacingModifierLetters InUCSSpecials InUCSSpp InUCSSuperscriptsAndSubscripts InUCSSupplementalArrows InUCSSupplementalArrowsC InUCSSupplementalCJKCompatibility InUCSSupplementalHangulA InUCSSupplementalHangulB InUCSSupplementalMathmaticalOperators InUCSSyriac InUCSTagalog InUCSTagbanwa InUCSTags InUCSTaiLe InUCSTamil InUCSTelugu InUCSThaana InUCSThai InUCSTibetan InUCSUgaritic InUCSUnicode InUCSUnifiedCanadianAboriginalSyllabics InUCSVariationSelectors InUCSVariationSelectorsSupplement InUCSWesternMusicalSymbols InUCSYiRadicals InUCSYiSyllables InUCSYijingHexagramSymbols InUCSZeroWidthBoundaryIndicators InUCS_BMP InUCS_BMPFirstEdition InUCS_BMPSecondEdition InUCS_BMP_AMD7 InUCS_CJKCompatibility InUCS_CJKCompatibilityForms InUCS_CJKCompatibilityIdeographs InUCS_CJKCompatibilityIdeographsSupplement InUCS_CJKMiscellaneous InUCS_CJKRadicalsSupplement InUCS_CJKSymbolsAndPunctuation InUCS_CJKUnifiedIdeographs InUCS_CJKUnifiedIdeographsAll InUCS_CJKUnifiedIdeographsExtensionA InUCS_CJKUnifiedIdeographsExtensionB InUCS_MES1 InUCS_MES2 InUCS_MES3A InUCS_MES3B InUCS1 InUCS10 InUCS100 InUCS1000 InUCS1001 InUCS1002 InUCS1003 InUCS1004 InUCS1005 InUCS1007 InUCS1008 InUCS1009 InUCS101 InUCS1010 InUCS1011 InUCS1012 InUCS1013 InUCS104 InUCS105 InUCS106 InUCS10646 InUCS107 InUCS108 InUCS11 InUCS12 InUCS13 InUCS14 InUCS15 InUCS16 InUCS17 InUCS18 InUCS180 InUCS19 InUCS2 InUCS20 InUCS200 InUCS2000 InUCS2001 InUCS2002 InUCS201 InUCS202 InUCS203 InUCS204 InUCS205 InUCS206 InUCS207 InUCS21 InUCS22 InUCS23 InUCS24 InUCS25 InUCS250 InUCS251 InUCS26 InUCS27 InUCS28 InUCS281 InUCS282 InUCS283 InUCS284 InUCS29 InUCS299 InUCS3 InUCS30 InUCS300 InUCS3000 InUCS3001 InUCS3002 InUCS301 InUCS302 InUCS31 InUCS32 InUCS33 InUCS34 InUCS35 InUCS36 InUCS37 InUCS38 InUCS39 InUCS4 InUCS40 InUCS4000 InUCS41 InUCS42 InUCS43 InUCS44 InUCS45 InUCS46 InUCS47 InUCS48 InUCS49 InUCS5 InUCS50 InUCS500 InUCS51 InUCS52 InUCS53 InUCS54 InUCS55 InUCS56 InUCS57 InUCS58 InUCS6 InUCS60 InUCS61 InUCS62 InUCS63 InUCS64 InUCS65 InUCS66 InUCS67 InUCS68 InUCS69 InUCS7 InUCS70 InUCS71 InUCS72 InUCS73 InUCS74 InUCS75 InUCS76 InUCS77 InUCS78 InUCS79 InUCS8 InUCS80 InUCS81 InUCS82 InUCS83 InUCS84 InUCS85 InUCS86 InUCS87 InUCS88 InUCS89 InUCS9 InUCS90 InUCS91 InUCS92 InUCS93 InUCS94 InUCS95 InUCS96 InUCS97 InUCS98 InUCS99);

sub InUCSAeganNumbers {
<<EOH;
10100	1013F	
EOH
}

sub InUCSAlphabeticPresentationForms {
<<EOH;
FB00	FB4F	
EOH
}

sub InUCSAlternateFormatCharactersExtended {
<<EOH;
0E0000	0E0FFF	
EOH
}

sub InUCSArabicExtended {
<<EOH;
0660	06FF	
EOH
}

sub InUCSArabicPresentationFormsA {
<<EOH;
FB50	FDFF	
EOH
}

sub InUCSArabicPresentationFormsB {
<<EOH;
FE70	FEFE	
EOH
}

sub InUCSArmenian {
<<EOH;
0530	058F	
EOH
}

sub InUCSArrows {
<<EOH;
2190	21FF	
EOH
}

sub InUCSBasicArabic {
<<EOH;
0600	065F	
EOH
}

sub InUCSBasicGeorgian {
<<EOH;
10D0	10FF	
EOH
}

sub InUCSBasicGreek {
<<EOH;
0370	03CF	
EOH
}

sub InUCSBasicHangul {
<<EOH;
3400	3D3D	
EOH
}

sub InUCSBasicHebrew {
<<EOH;
05D0	05EA	
EOH
}

sub InUCSBasicLatin {
<<EOH;
0020	007E	
EOH
}

sub InUCSBasicMyanmar {
<<EOH;
1000	104F	
200C
200D
EOH
}

sub InUCSBasicTibetan {
<<EOH;
0F00	0FBF	
EOH
}

sub InUCSBengali {
<<EOH;
0980	09FF	
200C
200D
EOH
}

sub InUCSBiDirectionalFormatEmbeddings {
<<EOH;
202A	202E	
EOH
}

sub InUCSBiDirectionalFormatMarks {
<<EOH;
200E	200F	
EOH
}

sub InUCSBlockElements {
<<EOH;
2580	259F	
EOH
}

sub InUCSBopomofo {
<<EOH;
3100	312F	
31A0	31BF	
EOH
}

sub InUCSBoxDrawing {
<<EOH;
2500	257F	
EOH
}

sub InUCSBraillePatterns {
<<EOH;
2800	28FF	
EOH
}

sub InUCSBuhid {
<<EOH;
1740	175F	
EOH
}

sub InUCSByzantineMusicalSymbols {
<<EOH;
01D000	01D0FF	
EOH
}

sub InUCSCharacterShapingSelectors {
<<EOH;
206A	206D	
EOH
}

sub InUCSCherokee {
<<EOH;
13A0	13FF	
EOH
}

sub InUCSCombiningDiacriticalMarks {
<<EOH;
0300	036F	
EOH
}

sub InUCSCombiningDiacriticalMarksForSymbols {
<<EOH;
20D0	20FF	
EOH
}

sub InUCSCombiningHalfMarks {
<<EOH;
FE20	FE2F	
EOH
}

sub InUCSControlPictures {
<<EOH;
2400	243F	
EOH
}

sub InUCSCurrencySymbols {
<<EOH;
20A0	20CF	
EOH
}

sub InUCSCypriotSyllabary {
<<EOH;
10800	1083F	
EOH
}

sub InUCSCyrillic {
<<EOH;
0400	04FF	
EOH
}

sub InUCSCyrillicSupplementary {
<<EOH;
0500	052F	
EOH
}

sub InUCSDeseret {
<<EOH;
010400	01044F	
EOH
}

sub InUCSDevanagari {
<<EOH;
0900	097F	
200C
200D
EOH
}

sub InUCSDingbats {
<<EOH;
2700	27BF	
EOH
}

sub InUCSEnclosedAlphanumerics {
<<EOH;
2460	24FF	
EOH
}

sub InUCSEnclosedCJKLettersAndMonths {
<<EOH;
3200	32FF	
EOH
}

sub InUCSEthiopic {
<<EOH;
1200	137F	
EOH
}

sub InUCSEtruscan {
<<EOH;
010300	01032F	
EOH
}

sub InUCSExtendedMyanmar {
<<EOH;
1050	109F	
EOH
}

sub InUCSFormatSeparators {
<<EOH;
2028	2029	
EOH
}

sub InUCSGeneralFormatCharacters {
<<EOH;
200B	200D	
FEFF
2028	2029	
200E	200F	
202A	202E	
EOH
}

sub InUCSGeneralPunctuation {
<<EOH;
2000	206F	
EOH
}

sub InUCSGeometricShapes {
<<EOH;
25A0	25FF	
EOH
}

sub InUCSGeorgianExtended {
<<EOH;
10A0	10CF	
EOH
}

sub InUCSGothic {
<<EOH;
010330	01034F	
EOH
}

sub InUCSGreekExtended {
<<EOH;
1F00	1FFF	
EOH
}

sub InUCSGreekSymbolsAndCoptic {
<<EOH;
03D0	03FF	
EOH
}

sub InUCSGujarati {
<<EOH;
0A80	0AFF	
200C
200D
EOH
}

sub InUCSGurmukhi {
<<EOH;
0A00	0A7F	
200C
200D
EOH
}

sub InUCSHalfwidthAndFullwidthForms {
<<EOH;
FF00	FFEF	
EOH
}

sub InUCSHangulCompatibilityJamo {
<<EOH;
3130	318F	
EOH
}

sub InUCSHangulFillCharacters {
<<EOH;
3164
FFA0
EOH
}

sub InUCSHangulJamo {
<<EOH;
1100	11FF	
EOH
}

sub InUCSHangulSyllables {
<<EOH;
AC00	D7A3	
EOH
}

sub InUCSHanunoo {
<<EOH;
1720	173F	
EOH
}

sub InUCSHebrewExtended {
<<EOH;
0590	05CF	
05EB	05FF	
EOH
}

sub InUCSHiragana {
<<EOH;
3040	309F	
EOH
}

sub InUCSIPAExtensions {
<<EOH;
0250	02AF	
EOH
}

sub InUCSIdeographicDescriptionCharacters {
<<EOH;
2FF0	2FFF	
EOH
}

sub InUCSKangxiRadicals {
<<EOH;
2F00	2FDF	
EOH
}

sub InUCSKannada {
<<EOH;
0C80	0CFF	
200C
200D
EOH
}

sub InUCSKatakana {
<<EOH;
30A0	30FF	
EOH
}

sub InUCSKatakanaPhoneticExtensions {
<<EOH;
31F0	31FF	
EOH
}

sub InUCSKhmer {
<<EOH;
1780	17FF	
200C
200D
EOH
}

sub InUCSLao {
<<EOH;
0E80	0EFF	
EOH
}

sub InUCSLatin1Supplement {
<<EOH;
00A0	00FF	
EOH
}

sub InUCSLatinExtendedA {
<<EOH;
0100	017F	
EOH
}

sub InUCSLatinExtendedAdditional {
<<EOH;
1E00	1EFF	
EOH
}

sub InUCSLatinExtendedB {
<<EOH;
0180	024F	
EOH
}

sub InUCSLetterlikeSymbols {
<<EOH;
2100	214F	
EOH
}

sub InUCSLimbu {
<<EOH;
1900	194F	
EOH
}

sub InUCSLinearBIdeograms {
<<EOH;
10080	100FF	
EOH
}

sub InUCSLinearBSyllabary {
<<EOH;
10000	1007F	
EOH
}

sub InUCSMalayalam {
<<EOH;
0D00	0D7F	
200C
200D
EOH
}

sub InUCSMathematicalOperators {
<<EOH;
2200	22FF	
EOH
}

sub InUCSMiscellaneousSymbols {
<<EOH;
2600	26FF	
EOH
}

sub InUCSMiscellaneousTechnical {
<<EOH;
2300	23FF	
EOH
}

sub InUCSMiscllaneousMathmaticalSymbols {
<<EOH;
2980	29FF	
EOH
}

sub InUCSMongolian {
<<EOH;
1800	18AF	
EOH
}

sub InUCSNumberForms {
<<EOH;
2150	218F	
EOH
}

sub InUCSNumericShapeSelectors {
<<EOH;
206E	206F	
EOH
}

sub InUCSOgham {
<<EOH;
1680	169F	
EOH
}

sub InUCSOpticalCharacterRecognition {
<<EOH;
2440	245F	
EOH
}

sub InUCSOriya {
<<EOH;
0B00	0B7F	
200C
200D
EOH
}

sub InUCSOsmanya {
<<EOH;
10480	104AF	
EOH
}

sub InUCSPart2 {
<<EOH;
010000	01FFFD	
020000	02FFFD	
0E0000	0EFFFD	
EOH
}

sub InUCSPrivateUseArea {
<<EOH;
E000	F8FF	
EOH
}

sub InUCSPrivateUseGroups {
<<EOH;
0030
0030
0030
0030
0030
0030
0030
0036
0037
0046
0046
0046
0046
0046
0046
0046
EOH
}

sub InUCSPrivateUsePlanes {
<<EOH;
0030
0030
0030
0030
0030
0030
0030
0030
0030
0030
0030
0031
0045
0046
0046
0046
0046
0046
0046
0046
0046
0046
0046
0046
EOH
}

sub InUCSRunic {
<<EOH;
16A0	16FF	
EOH
}

sub InUCSScriptSpecificFormatCharacters {
<<EOH;
3164
FFA0
206A	206D	
206E	206F	
2FF0	2FFF	
EOH
}

sub InUCSShavian {
<<EOH;
10450	1047F	
EOH
}

sub InUCSSinhala {
<<EOH;
0D80	0DFF	
EOH
}

sub InUCSSip {
<<EOH;
020000	02FFFD	
EOH
}

sub InUCSSmallFormVariants {
<<EOH;
FE50	FE6F	
EOH
}

sub InUCSSmp {
<<EOH;
010000	01FFFD	
EOH
}

sub InUCSSpacingModifierLetters {
<<EOH;
02B0	02FF	
EOH
}

sub InUCSSpecials {
<<EOH;
FFF0	FFFD	
EOH
}

sub InUCSSpp {
<<EOH;
0E0000	0EFFFD	
EOH
}

sub InUCSSuperscriptsAndSubscripts {
<<EOH;
2070	209F	
EOH
}

sub InUCSSupplementalArrows {
<<EOH;
2900	297F	
EOH
}

sub InUCSSupplementalArrowsC {
<<EOH;
2B00	2B2F	
EOH
}

sub InUCSSupplementalCJKCompatibility {
<<EOH;
31C0	31EF	
EOH
}

sub InUCSSupplementalHangulA {
<<EOH;
3D2E	44B7	
EOH
}

sub InUCSSupplementalHangulB {
<<EOH;
44BE	4DFF	
EOH
}

sub InUCSSupplementalMathmaticalOperators {
<<EOH;
2A00	2AFF	
EOH
}

sub InUCSSyriac {
<<EOH;
0700	074F	
EOH
}

sub InUCSTagalog {
<<EOH;
1700	171F	
EOH
}

sub InUCSTagbanwa {
<<EOH;
1760	177F	
EOH
}

sub InUCSTags {
<<EOH;
0E0000	0E007F	
EOH
}

sub InUCSTaiLe {
<<EOH;
1950	197F	
EOH
}

sub InUCSTamil {
<<EOH;
0B80	0BFF	
200C
200D
EOH
}

sub InUCSTelugu {
<<EOH;
0C00	0C7F	
200C
200D
EOH
}

sub InUCSThaana {
<<EOH;
0780	07BF	
EOH
}

sub InUCSThai {
<<EOH;
0E00	0E7F	
EOH
}

sub InUCSTibetan {
<<EOH;
0F00	0FFF	
EOH
}

sub InUCSUgaritic {
<<EOH;
10380	1039F	
EOH
}

sub InUCSUnicode {
<<EOH;
0000	FDCF	
FDF0	FFFD	
10000	1FFFD	
20000	2FFFD	
E0000	EFFFD	
F0000	FFFFD	
100000	10FFFD	
EOH
}

sub InUCSUnifiedCanadianAboriginalSyllabics {
<<EOH;
1400	167F	
EOH
}

sub InUCSVariationSelectors {
<<EOH;
FE00	FE0F	
EOH
}

sub InUCSVariationSelectorsSupplement {
<<EOH;
E0110	E01FF	
EOH
}

sub InUCSWesternMusicalSymbols {
<<EOH;
01D100	01D1FF	
EOH
}

sub InUCSYiRadicals {
<<EOH;
A490	A4CF	
EOH
}

sub InUCSYiSyllables {
<<EOH;
A000	A48F	
EOH
}

sub InUCSYijingHexagramSymbols {
<<EOH;
4DC0	4DFF	
EOH
}

sub InUCSZeroWidthBoundaryIndicators {
<<EOH;
200B	200D	
FEFF
EOH
}

sub InUCS_BMP {
<<EOH;
0000	D7FF
E000	FFFD
EOH
}

sub InUCS_BMPFirstEdition {
<<EOH;
0020	007E	
00A0	00FF	
0100	01F5	
01FA	01FF	
0200	0217	
0250	02A8	
02B0	02DE	
02E0	02E9	
0300	0345	
0360	0361	
0374	0375	
037A
037E
0384	038A	
038C
038E	03A1	
03A3	03CE	
03D0	03D6	
03DA
03DC
03DE
03E0
03E2	03F3	
0401	040C	
040E	044F	
0451	045C	
045E	0486	
0490	04C4	
04C7	04C8	
04CB	04CC	
04D0	04EB	
04EE	04F5	
04F8	04F9	
0531	0556	
0559	055F	
0561	0587	
0589
05B0	05B9	
05BB	05C3	
05D0	05EA	
05F0	05F4	
060C
061B
061F
0621	063A	
0640	0652	
0660	066D	
0670	06B7	
06BA	06BE	
06C0	06CE	
06D0	06ED	
06F0	06F9	
0901	0903	
0905	0939	
093C	094D	
0950	0954	
0958	0970	
0981	0983	
0985	098C	
098F	0990	
0993	09A8	
09AA	09B0	
09B2
09B6	09B9	
09BC
09BE	09C4	
09C7	09C8	
09CB	09CD	
09D7
09DC	09DD	
09DF	09E3	
09E6	09FA	
0A02
0A05	0A0A	
0A0F	0A10	
0A13	0A28	
0A2A	0A30	
0A32	0A33	
0A35	0A36	
0A38	0A39	
0A3C
0A3E	0A42	
0A47	0A48	
0A4B	0A4D	
0A59	0A5C	
0A5E
0A66	0A74	
0A81	0A83	
0A85	0A8B	
0A8D
0A8F	0A91	
0A93	0AA8	
0AAA	0AB0	
0AB2	0AB3	
0AB5	0AB9	
0ABC	0AC5	
0AC7	0AC9	
0ACB	0ACD	
0AD0
0AE0
0AE6	0AEF	
0B01	0B03	
0B05	0B0C	
0B0F	0B10	
0B13	0B28	
0B2A	0B30	
0B32	0B33	
0B36	0B39	
0B3C	0B43	
0B47	0B48	
0B4B	0B4D	
0B56	0B57	
0B5C	0B5D	
0B5F	0B61	
0B66	0B70	
0B82	0B83	
0B85	0B8A	
0B8E	0B90	
0B92	0B25	
0B99	0B9A	
0B9C
0B9E	0B9F	
0BA3	0BA4	
0BA8	0BAA	
0BAE	0BB5	
0BB7	0BB9	
0BBE	0BC2	
0BC6	0BC8	
0BCA	0BCD	
0BD7
0BE7	0BF2	
0C01	0C03	
0C05	0C0C	
0C0E	0C10	
0C12	0C28	
0C2A	0C33	
0C35	0C39	
0C3E	0C44	
0C46	0C48	
0C4A	0C4D	
0C55	0C56	
0C60	0C61	
0C66	0C6F	
0C82	0C83	
0C85	0C8C	
0C8E	0C90	
0C92	0CA8	
0CAA	0CB3	
0CB5	0CB9	
0CBE	0CC4	
0CC6	0CC8	
0CCA	0CCD	
0CD5	0CD6	
0CDE
0CE0	0CE1	
0CE6	0CEF	
0D02	0D03	
0D05	0D0C	
0D0E	0D10	
0D12	0D28	
0D2A	0D39	
0D3E	0D43	
0D46	0D48	
0D4A	0D4D	
0D57
0D60	0D61	
0D66	0D6F	
0E01	0E3A	
0E3F	0E5B	
0E81	0E82	
0E84
0E87	0E88	
0E8A
0E8D
0E94	0E97	
0E99	0E9F	
0EA1	0EA3	
0EA5
0EA7
0EAA	0EAB	
0EAD	0EB9	
0EBB	0EBD	
0EC0	0EC4	
0EC6
0EC8	0ECD	
0ED0	0ED9	
0EDC	0EDD	
10A0	10C5	
10D0	10F6	
10FB
1100	1159	
115F	11A2	
11A8	11F9	
1E00	1E9A	
1EA0	1EF9	
1F00	1F15	
1F18	1F1D	
1F20	1F45	
1F48	1F4D	
1F50	1F57	
1F59
1F5B
1F5D
1F5F	1F7D	
1F80	1FB4	
1FB6	1FC4	
1FC6	1FD3	
1FD6	1FDB	
1FDD	1FEF	
1FF2	1FF4	
1FF6	1FFE	
2000	202E	
2030	2046	
206A	2070	
2074	208E	
20A0	20AA	
20D0	20E1	
2100	2138	
2153	2182	
2190	21EA	
2200	22F1	
2300
2302	237A	
2400	2424	
2440	244A	
2460	24EA	
2500	2595	
25A0	25EF	
2600	2613	
261A	266F	
2701	2704	
2706	2709	
270C	2727	
2729	274B	
274D
274F	2752	
2756
2758	275E	
2761	2767	
2776	2794	
2798	27AF	
27B1	27BE	
3000	3037	
303F
3041	3094	
3099	309E	
30A1	30FE	
3105	312C	
3131	318E	
3190	319F	
3200	321C	
3220	3243	
3260	327B	
327F	32B0	
32C0	32CB	
32D0	32FE	
3300	3376	
337B	33DD	
33E0	33FE	
FB00	FB06	
FB13	FB17	
FB1E	FB36	
FB38	FB3C	
FB3E
FB40	FB41	
FB43	FB44	
FB46	FBB1	
FBD3	FBFF	
FC00	FCFF	
FD00	FD3F	
FD50	FD8F	
FD92	FDC7	
FDF0	FDFB	
FE20	FE23	
FE30	FE44	
FE49	FE52	
FE54	FE66	
FE68	FE6B	
FE70	FE72	
FE74
FE76	FEFC	
FEFF
FF01	FF5E	
FF61	FFBE	
FFC2	FFC7	
FFCA	FFCF	
FFD2	FFD7	
FFDA	FFDC	
FFE0	FFE6	
FFE8	FFEE	
FFFD
3400	4DFF
4E00	9FA5
E000	F8FF
F900	FA2D
EOH
}

sub InUCS_BMPSecondEdition {
<<EOH;
0020	007E	
00A0	00FF	
0100	01FF	
0200	0233	
0250	02AD	
02B0	02EE	
0300	034E	
0360	0362	
0374	0375	
037A
037E
0384	038A	
038C
038E	03A1	
03A3	03CE	
03D0	03D7	
03DA	03F3	
0400	0486	
0488	0489	
048C	04C4	
04C7	04C8	
04CB	04CC	
04D0	04F5	
04F8	04F9	
0531	0556	
0559	055F	
0561	0587	
0589	058A	
0591	05A1	
05A3	05B9	
05BB	05C4	
05D0	05EA	
05F0	05F4	
060C
061B
061F
0621	063A	
0640	0655	
0660	066D	
0670	06ED	
06F0	06FE	
0700	070D	
070F	072C	
0730	074A	
0780	07BF	
0901	0903	
0905	0939	
093C	094D	
0950	0954	
0958	0970	
0981	0983	
0985	098C	
098F	0990	
0993	09A8	
09AA	09B0	
09B2
09B6	09B9	
09BC
09BE	09C4	
09C7	09C8	
09CB	09CD	
09D7
09DC	09DD	
09DF	09E3	
09E6	09FA	
0A02
0A05	0A0A	
0A0F	0A10	
0A13	0A28	
0A2A	0A30	
0A32	0A33	
0A35	0A36	
0A38	0A39	
0A3C
0A3E	0A42	
0A47	0A48	
0A4B	0A4D	
0A59	0A5C	
0A5E
0A66	0A74	
0A81	0A83	
0A85	0A8B	
0A8D
0A8F	0A91	
0A93	0AA8	
0AAA	0AB0	
0AB2	0AB3	
0AB5	0AB9	
0ABC	0AC5	
0AC7	0AC9	
0ACB	0ACD	
0AD0
0AE0
0AE6	0AEF	
0B01	0B03	
0B05	0B0C	
0B0F	0B10	
0B13	0B28	
0B2A	0B30	
0B32	0B33	
0B36	0B39	
0B3C	0B43	
0B47	0B48	
0B4B	0B4D	
0B56	0B57	
0B5C	0B5D	
0B5F	0B61	
0B66	0B70	
0B82	0B83	
0B85	0B8A	
0B8E	0B90	
0B92	0B95	
0B99	0B9A	
0B9C
0B9E	0B9F	
0BA3	0BA4	
0BA8	0BAA	
0BAE	0BB5	
0BB7	0BB9	
0BBE	0BC2	
0BC6	0BC8	
0BCA	0BCD	
0BD7
0BE7	0BF2	
0C01	0C03	
0C05	0C0C	
0C0E	0C10	
0C12	0C28	
0C2A	0C33	
0C35	0C39	
0C3E	0C44	
0C46	0C48	
0C4A	0C4D	
0C55	0C56	
0C60	0C61	
0C66	0C6F	
0C82	0C83	
0C85	0C8C	
0C8E	0C90	
0C92	0CA8	
0CAA	0CB3	
0CB5	0CB9	
0CBE	0CC4	
0CC6	0CC8	
0CCA	0CCD	
0CD5	0CD6	
0CDE
0CE0	0CE1	
0CE6	0CEF	
0D02	0D03	
0D05	0D0C	
0D0E	0D10	
0D12	0D28	
0D2A	0D39	
0D3E	0D43	
0D46	0D48	
0D4A	0D4D	
0D57
0D60	0D61	
0D66	0D6F	
0D82	0D83	
0D85	0D96	
0D9A	0DB1	
0DB3	0DBB	
0DBD
0DC0	0DC6	
0DCA
0DCF	0DD4	
0DD6
0DD8	0DDF	
0DF2	0DF4	
0E01	0E3A	
0E3F	0E5B	
0E81	0E82	
0E84
0E87	0E88	
0E8A
0E8D
0E94	0E97	
0E99	0E9F	
0EA1	0EA3	
0EA5
0EA7
0EAA	0EAB	
0EAD	0EB9	
0EBB	0EBD	
0EC0	0EC4	
0EC6
0EC8	0ECD	
0ED0	0ED9	
0EDC	0EDD	
0F00	0F47	
0F49	0F6A	
0F71	0F8B	
0F90	0F97	
0F99	0FBC	
0FBE	0FCC	
0FCF
1000	1021	
1023	1027	
1029	102A	
102C	1032	
1036	1039	
1040	1059	
10A0	10C5	
10D0	10F6	
10FB
1100	1159	
115F	11A2	
11A8	11F9	
1220	1226	
1228	1246	
1248
124A	124D	
1250	1256	
1258
125A	125D	
1260	1286	
1288
128A	128D	
1290	12AE	
12B0
12B2	12B5	
12B8	12BE	
12C0
12C2	12C5	
12C8	12CE	
12D0	12D6	
12D8	12EE	
12F0	12FF	
1300	130E	
1310
1312	1315	
1318	131E	
1320	1346	
1348	135A	
1361	137C	
13A0	13F4	
1600	1676	
1680	169C	
16A0	16F0	
1780	17DC	
17E0	17E9	
1800	180E	
1810	1819	
1820	1877	
1880	18A9	
1E00	1E9B	
1EA0	1EF9	
1F00	1F15	
1F18	1F1D	
1F20	1F45	
1F48	1F4D	
1F50	1F57	
1F59
1F5B
1F5D
1F5F	1F7D	
1F80	1FB4	
1FB6	1FC4	
1FC6	1FD3	
1FD6	1FDB	
1FDD	1FEF	
1FF2	1FF4	
1FF6	1FFE	
2000	2046	
2048	204D	
204F
206A	2070	
2074	208E	
20A0	20AF	
20D0	20E3	
2100	213A	
2153	2183	
2190	21F3	
2200	22F1	
2300	237B	
237D	239A	
2400	2426	
2440	244A	
2460	24EA	
2500	2595	
25A0	25F7	
2600	2613	
2619	2671	
2701	2704	
2706	2709	
270C	2727	
2729	274B	
274D
274F	2752	
2756
2758	275E	
2761	2767	
2776	2794	
2798	27AF	
27B1	27BE	
2800	28FF	
2E80	2E99	
2E9B	2EF3	
2F00	2FD5	
2FF0	2FFB	
3000	303A	
303E	303F	
3041	3094	
3099	309E	
30A1	30FE	
3105	312C	
3131	318E	
3190	31B7	
3200	321C	
3220	3243	
3260	327B	
327F	32B0	
32C0	32CB	
32D0	32FE	
3300	3376	
337B	33DD	
33E0	33FE	
A400	A48C	
A490	A4A1	
A4A4	A4B3	
A4B5	A4C0	
A4C2	A4C4	
A4C6
FB00	FB06	
FB13	FB17	
FB1D	FB36	
FB38	FB3C	
FB3E
FB40	FB41	
FB43	FB44	
FB46	FBB1	
FBD3	FBFF	
FC00	FCFF	
FD00	FD3F	
FD50	FD8F	
FD92	FDC7	
FDF0	FDFB	
FE20	FE23	
FE30	FE44	
FE49	FE52	
FE54	FE66	
FE68	FE6B	
FE70	FE72	
FE74
FE76	FEFC	
FEFF
FF01	FF5E	
FF61	FFBE	
FFC2	FFC7	
FFCA	FFCF	
FFD2	FFD7	
FFDA	FFDC	
FFE0	FFE6	
FFE8	FFEE	
FFF9	FFFD	
1401	15FF
4E00	9FA5
AC00	D7A3
E000	F8FF
F900	FA2D
EOH
}

sub InUCS_BMP_AMD7 {
<<EOH;
0020	007E	
00A0	00FF	
0100	01F5	
01FA	01FF	
0200	0217	
0250	02A8	
02B0	02DE	
02E0	02E9	
0300	0345	
0360	0361	
0374	0375	
037A
037E
0384	038A	
038C
038E	03A1	
03A3	03CE	
03D0	03D6	
03DA
03DC
03DE
03E0
03E2	03F3	
0401	040C	
040E	044F	
0451	045C	
045E	0486	
0490	04C4	
04C7	04C8	
04CB	04CC	
04D0	04EB	
04EE	04F5	
04F8	04F9	
0531	0556	
0559	055F	
0561	0587	
0589
0591	05A1	
05A3	05B9	
05BB	05C4	
05D0	05EA	
05F0	05F4	
060C
061B
061F
0621	063A	
0640	0652	
0660	066D	
0670	06B7	
06BA	06BE	
06C0	06CE	
06D0	06ED	
06F0	06F9	
0901	0903	
0905	0939	
093C	094D	
0950	0954	
0958	0970	
0981	0983	
0985	098C	
098F	0990	
0993	09A8	
09AA	09B0	
09B2
09B6	09B9	
09BC
09BE	09C4	
09C7	09C8	
09CB	09CD	
09D7
09DC	09DD	
09DF	09E3	
09E6	09FA	
0A02
0A05	0A0A	
0A0F	0A10	
0A13	0A28	
0A2A	0A30	
0A32	0A33	
0A35	0A36	
0A38	0A39	
0A3C
0A3E	0A42	
0A47	0A48	
0A4B	0A4D	
0A59	0A5C	
0A5E
0A66	0A74	
0A81	0A83	
0A85	0A8B	
0A8D
0A8F	0A91	
0A93	0AA8	
0AAA	0AB0	
0AB2	0AB3	
0AB5	0AB9	
0ABC	0AC5	
0AC7	0AC9	
0ACB	0ACD	
0AD0
0AE0
0AE6	0AEF	
0B01	0B03	
0B05	0B0C	
0B0F	0B10	
0B13	0B28	
0B2A	0B30	
0B32	0B33	
0B36	0B39	
0B3C	0B43	
0B47	0B48	
0B4B	0B4D	
0B56	0B57	
0B5C	0B5D	
0B5F	0B61	
0B66	0B70	
0B82	0B83	
0B85	0B8A	
0B8E	0B90	
0B92	0B25	
0B99	0B9A	
0B9C
0B9E	0B9F	
0BA3	0BA4	
0BA8	0BAA	
0BAE	0BB5	
0BB7	0BB9	
0BBE	0BC2	
0BC6	0BC8	
0BCA	0BCD	
0BD7
0BE7	0BF2	
0C01	0C03	
0C05	0C0C	
0C0E	0C10	
0C12	0C28	
0C2A	0C33	
0C35	0C39	
0C3E	0C44	
0C46	0C48	
0C4A	0C4D	
0C55	0C56	
0C60	0C61	
0C66	0C6F	
0C82	0C83	
0C85	0C8C	
0C8E	0C90	
0C92	0CA8	
0CAA	0CB3	
0CB5	0CB9	
0CBE	0CC4	
0CC6	0CC8	
0CCA	0CCD	
0CD5	0CD6	
0CDE
0CE0	0CE1	
0CE6	0CEF	
0D02	0D03	
0D05	0D0C	
0D0E	0D10	
0D12	0D28	
0D2A	0D39	
0D3E	0D43	
0D46	0D48	
0D4A	0D4D	
0D57
0D60	0D61	
0D66	0D6F	
0E01	0E3A	
0E3F	0E5B	
0E81	0E82	
0E84
0E87	0E88	
0E8A
0E8D
0E94	0E97	
0E99	0E9F	
0EA1	0EA3	
0EA5
0EA7
0EAA	0EAB	
0EAD	0EB9	
0EBB	0EBD	
0EC0	0EC4	
0EC6
0EC8	0ECD	
0ED0	0ED9	
0EDC	0EDD	
0F00	0F47	
0F49	0F69	
0F71	0F8B	
0F90	0F95	
0F97
0F99	0FAD	
0FB1	0FB7	
0FB9
10A0	10C5	
10D0	10F6	
10FB
1100	1159	
115F	11A2	
11A8	11F9	
1E00	1E9B	
1EA0	1EF9	
1F00	1F15	
1F18	1F1D	
1F20	1F45	
1F48	1F4D	
1F50	1F57	
1F59
1F5B
1F5D
1F5F	1F7D	
1F80	1FB4	
1FB6	1FC4	
1FC6	1FD3	
1FD6	1FDB	
1FDD	1FEF	
1FF2	1FF4	
1FF6	1FFE	
2000	202E	
2030	2046	
206A	2070	
2074	208E	
20A0	20AB	
20D0	20E1	
2100	2138	
2153	2182	
2190	21EA	
2200	22F1	
2300
2302	237A	
2400	2424	
2440	244A	
2460	24EA	
2500	2595	
25A0	25EF	
2600	2613	
261A	266F	
2701	2704	
2706	2709	
270C	2727	
2729	274B	
274D
274F	2752	
2756
2758	275E	
2761	2767	
2776	2794	
2798	27AF	
27B1	27BE	
3000	3037	
303F
3041	3094	
3099	309E	
30A1	30FE	
3105	312C	
3131	318E	
3190	319F	
3200	321C	
3220	3243	
3260	327B	
327F	32B0	
32C0	32CB	
32D0	32FE	
3300	3376	
337B	33DD	
33E0	33FE	
FB00	FB06	
FB13	FB17	
FB1E	FB36	
FB38	FB3C	
FB3E
FB40	FB41	
FB43	FB44	
FB46	FBB1	
FBD3	FBFF	
FC00	FCFF	
FD00	FD3F	
FD50	FD8F	
FD92	FDC7	
FDF0	FDFB	
FE20	FE23	
FE30	FE44	
FE49	FE52	
FE54	FE66	
FE68	FE6B	
FE70	FE72	
FE74
FE76	FEFC	
FEFF
FF01	FF5E	
FF61	FFBE	
FFC2	FFC7	
FFCA	FFCF	
FFD2	FFD7	
FFDA	FFDC	
FFE0	FFE6	
FFE8	FFEE	
FFFD
4E00	9FA5
AC00	D7A3
E000	F8FF
F900	FA2D
EOH
}

sub InUCS_CJKCompatibility {
<<EOH;
3300	33FF	
EOH
}

sub InUCS_CJKCompatibilityForms {
<<EOH;
FE30	FE4F	
EOH
}

sub InUCS_CJKCompatibilityIdeographs {
<<EOH;
F900	FAFF	
EOH
}

sub InUCS_CJKCompatibilityIdeographsSupplement {
<<EOH;
02F800	02FA1F	
EOH
}

sub InUCS_CJKMiscellaneous {
<<EOH;
3190	319F	
EOH
}

sub InUCS_CJKRadicalsSupplement {
<<EOH;
2E80	2EFF	
EOH
}

sub InUCS_CJKSymbolsAndPunctuation {
<<EOH;
3000	303F	
EOH
}

sub InUCS_CJKUnifiedIdeographs {
<<EOH;
4E00	9FFF	
EOH
}

sub InUCS_CJKUnifiedIdeographsAll {
<<EOH;
3400	4DBF	
4E00	9FFF	
FA0E	FA0F	
FA11
FA14	FA14	
FA1F
FA21
FA23	FA24	
FA27	FA29	
20000	2A6DF	
EOH
}

sub InUCS_CJKUnifiedIdeographsExtensionA {
<<EOH;
3400	4DBF	
EOH
}

sub InUCS_CJKUnifiedIdeographsExtensionB {
<<EOH;
020000	02A71F	
EOH
}

sub InUCS_MES1 {
<<EOH;
0020	007E	
00A0	00FF	
0100	0113	
0116	012B	
012E	014D	
0150	017E	
02C7
02D8	02DB	
02DD
2015
2018	2019	
201C	201D	
20AC
2122
2126
215B	215E	
2190	2193	
266A
EOH
}

sub InUCS_MES2 {
<<EOH;
0020	007E	
00A0	00FF	
0100	017F	
018F
0192
01B7
01DE	01EF	
01FA	01FF	
0218	021B	
021E	021F	
0259
027C
0292
02BB	02BD	
02C6	02C7	
02C9
02D8	02DD	
02EE
0374	0375	
037A
037E
0384	038A	
038C
038E	03A1	
03A3	03CE	
03D7
03DA	03E1	
0400	045F	
0490	04C4	
04C7	04C8	
04CB	04CC	
04D0	04EB	
04EE	04F5	
04F8	04F9	
1E02	1E03	
1E0A	1E0B	
1E1E	1E1F	
1E40	1E41	
1E56	1E57	
1E60	1E61	
1E6A	1E6B	
1E80	1E85	
1E9B
1EF2	1EF3	
1F00	1F15	
1F18	1F1D	
1F20	1F45	
1F48	1F4D	
1F50	1F57	
1F59
1F5B
1F5D
1F5F	1F7D	
1F80	1FB4	
1FB6	1FC4	
1FC6	1FD3	
1FD6	1FDB	
1FDD	1FEF	
1FF2	1FF4	
1FF6	1FFE	
2013	2015	
2017	201E	
2020	2022	
2026
2030
2032	2033	
2039	203A	
203C
203E
2044
204A
207F
2082
20A3	20A4	
20A7
20AC
20AF
2105
2116
2122
2126
215B	215E	
2190	2195	
21A8
2200
2202	2203	
2206
2208	2209	
220F
2211	2212	
2219	221A	
221E	221F	
2227	222B	
2248
2259
2260	2261	
2264	2265	
2282	2283	
2295
2297
2302
2310
2320	2321	
2329	232A	
2500
2502
250C
2510
2514
2518
251C
2524
252C
2534
253C
2550	256C	
2580
2584
2588
258C
2590	2593	
25A0
25AC
25B2
25BA
25BC
25C4
25CA	25CB	
25D8	25D9	
263A	263C	
2640
2642
2660
2663
2665	2666	
266A	266B	
FB01	FB02	
FFFD
EOH
}

sub InUCS_MES3A {
<<EOH;
0020	007E	
00A0	00FF	
0100	017F	
0180	024F	
0250	02AF	
02B0	02FF	
0300	036F	
0370	03CF	
03D0	03FF	
0400	04FF	
0530	058F	
10D0	10FF	
1E00	1EFF	
1F00	1FFF	
2000	206F	
2070	209F	
20A0	20CF	
20D0	20FF	
2100	214F	
2150	218F	
2190	21FF	
2200	22FF	
2300	23FF	
2440	245F	
2500	257F	
2580	259F	
25A0	25FF	
2600	26FF	
FB00	FB4F	
FE20	FE2F	
FFF0	FFFD	
EOH
}

sub InUCS_MES3B {
<<EOH;
0020	007E	
00A0	00FF	
0100	01FF	
0200	021F	
0222	0233	
0250	02AD	
02B0	02EE	
0300	034E	
0360	0362	
0374	0375	
037A
037E
0384	038A	
038C
038E	03A1	
03A3	03CE	
03D0	03D7	
03DA	03F3	
0400	0486	
0488	0489	
048C	04C4	
04C7	04C8	
04CB	04CC	
04D0	04F5	
04F8	04F9	
0531	0556	
0559	055F	
0561	0587	
0589	058A	
10D0	10F6	
10FB
1E00	1E9B	
1EA0	1EF9	
1F00	1F15	
1F18	1F1D	
1F20	1F45	
1F48	1F4D	
1F50	1F57	
1F59
1F5B
1F5D
1F5F	1F7D	
1F80	1FB4	
1FB6	1FC4	
1FC6	1FD3	
1FD6	1FDB	
1FDD	1FEF	
1FF2	1FF4	
1FF6	1FFE	
2000	2046	
2048	204D	
206A	2070	
2074	208E	
20A0	20AF	
20D0	20E3	
2100	213A	
2153	2183	
2190	21F3	
2200	22F1	
2300	237B	
237D	239A	
2440	244A	
2500	2595	
25A0	25F7	
2600	2613	
2619	2671	
FB00	FB06	
FB13	FB17	
FE20	FE23	
FFF9	FFFD	
EOH
}

*InUCS1 = \&InUCSBasicLatin;

*InUCS10 = \&InUCSCyrillic;

*InUCS100 = \&InUCSKatakanaPhoneticExtensions;

*InUCS1000 = \&InUCSSmp;

*InUCS1001 = \&InUCSEtruscan;

*InUCS1002 = \&InUCSGothic;

*InUCS1003 = \&InUCSDeseret;

*InUCS1004 = \&InUCSByzantineMusicalSymbols;

*InUCS1005 = \&InUCSWesternMusicalSymbols;

*InUCS1007 = \&InUCSLinearBSyllabary;

*InUCS1008 = \&InUCSLinearBIdeograms;

*InUCS1009 = \&InUCSAeganNumbers;

*InUCS101 = \&InUCSVariationSelectors;

*InUCS1010 = \&InUCSUgaritic;

*InUCS1011 = \&InUCSShavian;

*InUCS1012 = \&InUCSOsmanya;

*InUCS1013 = \&InUCSCypriotSyllabary;

*InUCS104 = \&InUCSLimbu;

*InUCS105 = \&InUCSTaiLe;

*InUCS106 = \&InUCSSupplementalArrowsC;

*InUCS10646 = \&InUCSUnicode;

*InUCS107 = \&InUCSSupplementalCJKCompatibility;

*InUCS108 = \&InUCSYijingHexagramSymbols;

*InUCS11 = \&InUCSArmenian;

*InUCS12 = \&InUCSBasicHebrew;

*InUCS13 = \&InUCSHebrewExtended;

*InUCS14 = \&InUCSBasicArabic;

*InUCS15 = \&InUCSArabicExtended;

*InUCS16 = \&InUCSDevanagari;

*InUCS17 = \&InUCSBengali;

*InUCS18 = \&InUCSGurmukhi;

*InUCS180 = \&InUCS_CJKUnifiedIdeographsAll;

*InUCS19 = \&InUCSGujarati;

*InUCS2 = \&InUCSLatin1Supplement;

*InUCS20 = \&InUCSOriya;

*InUCS200 = \&InUCSZeroWidthBoundaryIndicators;

*InUCS2000 = \&InUCSSip;

*InUCS2001 = \&InUCS_CJKUnifiedIdeographsExtensionB;

*InUCS2002 = \&InUCS_CJKCompatibilityIdeographsSupplement;

*InUCS201 = \&InUCSFormatSeparators;

*InUCS202 = \&InUCSBiDirectionalFormatMarks;

*InUCS203 = \&InUCSBiDirectionalFormatEmbeddings;

*InUCS204 = \&InUCSHangulFillCharacters;

*InUCS205 = \&InUCSCharacterShapingSelectors;

*InUCS206 = \&InUCSNumericShapeSelectors;

*InUCS207 = \&InUCSIdeographicDescriptionCharacters;

*InUCS21 = \&InUCSTamil;

*InUCS22 = \&InUCSTelugu;

*InUCS23 = \&InUCSKannada;

*InUCS24 = \&InUCSMalayalam;

*InUCS25 = \&InUCSThai;

*InUCS250 = \&InUCSGeneralFormatCharacters;

*InUCS251 = \&InUCSScriptSpecificFormatCharacters;

*InUCS26 = \&InUCSLao;

*InUCS27 = \&InUCSBasicGeorgian;

*InUCS28 = \&InUCSGeorgianExtended;

*InUCS281 = \&InUCS_MES1;

*InUCS282 = \&InUCS_MES2;

*InUCS283 = \&InUCS_MES3A;

*InUCS284 = \&InUCS_MES3B;

*InUCS29 = \&InUCSHangulJamo;

*InUCS299 = \&InUCS_BMPFirstEdition;

*InUCS3 = \&InUCSLatinExtendedA;

*InUCS30 = \&InUCSLatinExtendedAdditional;

*InUCS300 = \&InUCS_BMP;

*InUCS3000 = \&InUCSSpp;

*InUCS3001 = \&InUCSTags;

*InUCS3002 = \&InUCSVariationSelectorsSupplement;

*InUCS301 = \&InUCS_BMP_AMD7;

*InUCS302 = \&InUCS_BMPSecondEdition;

*InUCS31 = \&InUCSGreekExtended;

*InUCS32 = \&InUCSGeneralPunctuation;

*InUCS33 = \&InUCSSuperscriptsAndSubscripts;

*InUCS34 = \&InUCSCurrencySymbols;

*InUCS35 = \&InUCSCombiningDiacriticalMarksForSymbols;

*InUCS36 = \&InUCSLetterlikeSymbols;

*InUCS37 = \&InUCSNumberForms;

*InUCS38 = \&InUCSArrows;

*InUCS39 = \&InUCSMathematicalOperators;

*InUCS4 = \&InUCSLatinExtendedB;

*InUCS40 = \&InUCSMiscellaneousTechnical;

*InUCS4000 = \&InUCSPart2;

*InUCS41 = \&InUCSControlPictures;

*InUCS42 = \&InUCSOpticalCharacterRecognition;

*InUCS43 = \&InUCSEnclosedAlphanumerics;

*InUCS44 = \&InUCSBoxDrawing;

*InUCS45 = \&InUCSBlockElements;

*InUCS46 = \&InUCSGeometricShapes;

*InUCS47 = \&InUCSMiscellaneousSymbols;

*InUCS48 = \&InUCSDingbats;

*InUCS49 = \&InUCS_CJKSymbolsAndPunctuation;

*InUCS5 = \&InUCSIPAExtensions;

*InUCS50 = \&InUCSHiragana;

*InUCS500 = \&InUCSPrivateUseGroups;

*InUCS51 = \&InUCSKatakana;

*InUCS52 = \&InUCSBopomofo;

*InUCS53 = \&InUCSHangulCompatibilityJamo;

*InUCS54 = \&InUCS_CJKMiscellaneous;

*InUCS55 = \&InUCSEnclosedCJKLettersAndMonths;

*InUCS56 = \&InUCS_CJKCompatibility;

*InUCS57 = \&InUCSBasicHangul;

*InUCS58 = \&InUCSSupplementalHangulB;

*InUCS6 = \&InUCSSpacingModifierLetters;

*InUCS60 = \&InUCS_CJKUnifiedIdeographs;

*InUCS61 = \&InUCSPrivateUseArea;

*InUCS62 = \&InUCS_CJKCompatibilityIdeographs;

*InUCS63 = \&InUCSAlphabeticPresentationForms;

*InUCS64 = \&InUCSArabicPresentationFormsA;

*InUCS65 = \&InUCSCombiningHalfMarks;

*InUCS66 = \&InUCS_CJKCompatibilityForms;

*InUCS67 = \&InUCSSmallFormVariants;

*InUCS68 = \&InUCSArabicPresentationFormsB;

*InUCS69 = \&InUCSHalfwidthAndFullwidthForms;

*InUCS7 = \&InUCSCombiningDiacriticalMarks;

*InUCS70 = \&InUCSSpecials;

*InUCS71 = \&InUCSHangulSyllables;

*InUCS72 = \&InUCSBasicTibetan;

*InUCS73 = \&InUCSEthiopic;

*InUCS74 = \&InUCSUnifiedCanadianAboriginalSyllabics;

*InUCS75 = \&InUCSCherokee;

*InUCS76 = \&InUCSYiSyllables;

*InUCS77 = \&InUCSYiRadicals;

*InUCS78 = \&InUCSKangxiRadicals;

*InUCS79 = \&InUCS_CJKRadicalsSupplement;

*InUCS8 = \&InUCSBasicGreek;

*InUCS80 = \&InUCSBraillePatterns;

*InUCS81 = \&InUCS_CJKUnifiedIdeographsExtensionA;

*InUCS82 = \&InUCSOgham;

*InUCS83 = \&InUCSRunic;

*InUCS84 = \&InUCSSinhala;

*InUCS85 = \&InUCSSyriac;

*InUCS86 = \&InUCSThaana;

*InUCS87 = \&InUCSBasicMyanmar;

*InUCS88 = \&InUCSKhmer;

*InUCS89 = \&InUCSMongolian;

*InUCS9 = \&InUCSGreekSymbolsAndCoptic;

*InUCS90 = \&InUCSExtendedMyanmar;

*InUCS91 = \&InUCSTibetan;

*InUCS92 = \&InUCSCyrillicSupplementary;

*InUCS93 = \&InUCSTagalog;

*InUCS94 = \&InUCSHanunoo;

*InUCS95 = \&InUCSBuhid;

*InUCS96 = \&InUCSTagbanwa;

*InUCS97 = \&InUCSSupplementalArrows;

*InUCS98 = \&InUCSMiscllaneousMathmaticalSymbols;

*InUCS99 = \&InUCSSupplementalMathmaticalOperators;

=head1 COLLECTION NAMES

=over 4

=item C<InUCS1>

An alias for InUCSBasicLatin.

=item C<InUCS10>

An alias for InUCSCyrillic.

=item C<InUCS100>

An alias for InUCSKatakanaPhoneticExtensions.

=item C<InUCS1000>

An alias for InUCSSmp.

=item C<InUCS1001>

An alias for InUCSEtruscan.

=item C<InUCS1002>

An alias for InUCSGothic.

=item C<InUCS1003>

An alias for InUCSDeseret.

=item C<InUCS1004>

An alias for InUCSByzantineMusicalSymbols.

=item C<InUCS1005>

An alias for InUCSWesternMusicalSymbols.

=item C<InUCS1007>

An alias for InUCSLinearBSyllabary.

=item C<InUCS1008>

An alias for InUCSLinearBIdeograms.

=item C<InUCS1009>

An alias for InUCSAeganNumbers.

=item C<InUCS101>

An alias for InUCSVariationSelectors.

=item C<InUCS1010>

An alias for InUCSUgaritic.

=item C<InUCS1011>

An alias for InUCSShavian.

=item C<InUCS1012>

An alias for InUCSOsmanya.

=item C<InUCS1013>

An alias for InUCSCypriotSyllabary.

=item C<InUCS104>

An alias for InUCSLimbu.

=item C<InUCS105>

An alias for InUCSTaiLe.

=item C<InUCS106>

An alias for InUCSSupplementalArrowsC.

=item C<InUCS10646>

An alias for InUCSUnicode.

=item C<InUCS107>

An alias for InUCSSupplementalCJKCompatibility.

=item C<InUCS108>

An alias for InUCSYijingHexagramSymbols.

=item C<InUCS11>

An alias for InUCSArmenian.

=item C<InUCS12>

An alias for InUCSBasicHebrew.

=item C<InUCS13>

An alias for InUCSHebrewExtended.

=item C<InUCS14>

An alias for InUCSBasicArabic.

=item C<InUCS15>

An alias for InUCSArabicExtended.

=item C<InUCS16>

An alias for InUCSDevanagari.

=item C<InUCS17>

An alias for InUCSBengali.

=item C<InUCS18>

An alias for InUCSGurmukhi.

=item C<InUCS180>

An alias for InUCS_CJKUnifiedIdeographsAll.

=item C<InUCS19>

An alias for InUCSGujarati.

=item C<InUCS2>

An alias for InUCSLatin1Supplement.

=item C<InUCS20>

An alias for InUCSOriya.

=item C<InUCS200>

An alias for InUCSZeroWidthBoundaryIndicators.

=item C<InUCS2000>

An alias for InUCSSip.

=item C<InUCS2001>

An alias for InUCS_CJKUnifiedIdeographsExtensionB.

=item C<InUCS2002>

An alias for InUCS_CJKCompatibilityIdeographsSupplement.

=item C<InUCS201>

An alias for InUCSFormatSeparators.

=item C<InUCS202>

An alias for InUCSBiDirectionalFormatMarks.

=item C<InUCS203>

An alias for InUCSBiDirectionalFormatEmbeddings.

=item C<InUCS204>

An alias for InUCSHangulFillCharacters.

=item C<InUCS205>

An alias for InUCSCharacterShapingSelectors.

=item C<InUCS206>

An alias for InUCSNumericShapeSelectors.

=item C<InUCS207>

An alias for InUCSIdeographicDescriptionCharacters.

=item C<InUCS21>

An alias for InUCSTamil.

=item C<InUCS22>

An alias for InUCSTelugu.

=item C<InUCS23>

An alias for InUCSKannada.

=item C<InUCS24>

An alias for InUCSMalayalam.

=item C<InUCS25>

An alias for InUCSThai.

=item C<InUCS250>

An alias for InUCSGeneralFormatCharacters.

=item C<InUCS251>

An alias for InUCSScriptSpecificFormatCharacters.

=item C<InUCS26>

An alias for InUCSLao.

=item C<InUCS27>

An alias for InUCSBasicGeorgian.

=item C<InUCS28>

An alias for InUCSGeorgianExtended.

=item C<InUCS281>

An alias for InUCS_MES1.

=item C<InUCS282>

An alias for InUCS_MES2.

=item C<InUCS283>

An alias for InUCS_MES3A.

=item C<InUCS284>

An alias for InUCS_MES3B.

=item C<InUCS29>

An alias for InUCSHangulJamo.

=item C<InUCS299>

An alias for InUCS_BMPFirstEdition.

=item C<InUCS3>

An alias for InUCSLatinExtendedA.

=item C<InUCS30>

An alias for InUCSLatinExtendedAdditional.

=item C<InUCS300>

An alias for InUCS_BMP.

=item C<InUCS3000>

An alias for InUCSSpp.

=item C<InUCS3001>

An alias for InUCSTags.

=item C<InUCS3002>

An alias for InUCSVariationSelectorsSupplement.

=item C<InUCS301>

An alias for InUCS_BMP_AMD7.

=item C<InUCS302>

An alias for InUCS_BMPSecondEdition.

=item C<InUCS31>

An alias for InUCSGreekExtended.

=item C<InUCS32>

An alias for InUCSGeneralPunctuation.

=item C<InUCS33>

An alias for InUCSSuperscriptsAndSubscripts.

=item C<InUCS34>

An alias for InUCSCurrencySymbols.

=item C<InUCS35>

An alias for InUCSCombiningDiacriticalMarksForSymbols.

=item C<InUCS36>

An alias for InUCSLetterlikeSymbols.

=item C<InUCS37>

An alias for InUCSNumberForms.

=item C<InUCS38>

An alias for InUCSArrows.

=item C<InUCS39>

An alias for InUCSMathematicalOperators.

=item C<InUCS4>

An alias for InUCSLatinExtendedB.

=item C<InUCS40>

An alias for InUCSMiscellaneousTechnical.

=item C<InUCS4000>

An alias for InUCSPart2.

=item C<InUCS41>

An alias for InUCSControlPictures.

=item C<InUCS42>

An alias for InUCSOpticalCharacterRecognition.

=item C<InUCS43>

An alias for InUCSEnclosedAlphanumerics.

=item C<InUCS44>

An alias for InUCSBoxDrawing.

=item C<InUCS45>

An alias for InUCSBlockElements.

=item C<InUCS46>

An alias for InUCSGeometricShapes.

=item C<InUCS47>

An alias for InUCSMiscellaneousSymbols.

=item C<InUCS48>

An alias for InUCSDingbats.

=item C<InUCS49>

An alias for InUCS_CJKSymbolsAndPunctuation.

=item C<InUCS5>

An alias for InUCSIPAExtensions.

=item C<InUCS50>

An alias for InUCSHiragana.

=item C<InUCS500>

An alias for InUCSPrivateUseGroups.

=item C<InUCS51>

An alias for InUCSKatakana.

=item C<InUCS52>

An alias for InUCSBopomofo.

=item C<InUCS53>

An alias for InUCSHangulCompatibilityJamo.

=item C<InUCS54>

An alias for InUCS_CJKMiscellaneous.

=item C<InUCS55>

An alias for InUCSEnclosedCJKLettersAndMonths.

=item C<InUCS56>

An alias for InUCS_CJKCompatibility.

=item C<InUCS57>

An alias for InUCSBasicHangul.

=item C<InUCS58>

An alias for InUCSSupplementalHangulB.

=item C<InUCS6>

An alias for InUCSSpacingModifierLetters.

=item C<InUCS60>

An alias for InUCS_CJKUnifiedIdeographs.

=item C<InUCS61>

An alias for InUCSPrivateUseArea.

=item C<InUCS62>

An alias for InUCS_CJKCompatibilityIdeographs.

=item C<InUCS63>

An alias for InUCSAlphabeticPresentationForms.

=item C<InUCS64>

An alias for InUCSArabicPresentationFormsA.

=item C<InUCS65>

An alias for InUCSCombiningHalfMarks.

=item C<InUCS66>

An alias for InUCS_CJKCompatibilityForms.

=item C<InUCS67>

An alias for InUCSSmallFormVariants.

=item C<InUCS68>

An alias for InUCSArabicPresentationFormsB.

=item C<InUCS69>

An alias for InUCSHalfwidthAndFullwidthForms.

=item C<InUCS7>

An alias for InUCSCombiningDiacriticalMarks.

=item C<InUCS70>

An alias for InUCSSpecials.

=item C<InUCS71>

An alias for InUCSHangulSyllables.

=item C<InUCS72>

An alias for InUCSBasicTibetan.

=item C<InUCS73>

An alias for InUCSEthiopic.

=item C<InUCS74>

An alias for InUCSUnifiedCanadianAboriginalSyllabics.

=item C<InUCS75>

An alias for InUCSCherokee.

=item C<InUCS76>

An alias for InUCSYiSyllables.

=item C<InUCS77>

An alias for InUCSYiRadicals.

=item C<InUCS78>

An alias for InUCSKangxiRadicals.

=item C<InUCS79>

An alias for InUCS_CJKRadicalsSupplement.

=item C<InUCS8>

An alias for InUCSBasicGreek.

=item C<InUCS80>

An alias for InUCSBraillePatterns.

=item C<InUCS81>

An alias for InUCS_CJKUnifiedIdeographsExtensionA.

=item C<InUCS82>

An alias for InUCSOgham.

=item C<InUCS83>

An alias for InUCSRunic.

=item C<InUCS84>

An alias for InUCSSinhala.

=item C<InUCS85>

An alias for InUCSSyriac.

=item C<InUCS86>

An alias for InUCSThaana.

=item C<InUCS87>

An alias for InUCSBasicMyanmar.

=item C<InUCS88>

An alias for InUCSKhmer.

=item C<InUCS89>

An alias for InUCSMongolian.

=item C<InUCS9>

An alias for InUCSGreekSymbolsAndCoptic.

=item C<InUCS90>

An alias for InUCSExtendedMyanmar.

=item C<InUCS91>

An alias for InUCSTibetan.

=item C<InUCS92>

An alias for InUCSCyrillicSupplementary.

=item C<InUCS93>

An alias for InUCSTagalog.

=item C<InUCS94>

An alias for InUCSHanunoo.

=item C<InUCS95>

An alias for InUCSBuhid.

=item C<InUCS96>

An alias for InUCSTagbanwa.

=item C<InUCS97>

An alias for InUCSSupplementalArrows.

=item C<InUCS98>

An alias for InUCSMiscllaneousMathmaticalSymbols.

=item C<InUCS99>

An alias for InUCSSupplementalMathmaticalOperators.

=item C<InUCSAeganNumbers>

=item C<InUCSAlphabeticPresentationForms>

=item C<InUCSAlternateFormatCharactersExtended>

=item C<InUCSArabicExtended>

=item C<InUCSArabicPresentationFormsA>

=item C<InUCSArabicPresentationFormsB>

=item C<InUCSArmenian>

=item C<InUCSArrows>

=item C<InUCSBasicArabic>

=item C<InUCSBasicGeorgian>

=item C<InUCSBasicGreek>

=item C<InUCSBasicHangul>

=item C<InUCSBasicHebrew>

=item C<InUCSBasicLatin>

=item C<InUCSBasicMyanmar>

=item C<InUCSBasicTibetan>

=item C<InUCSBengali>

=item C<InUCSBiDirectionalFormatEmbeddings>

=item C<InUCSBiDirectionalFormatMarks>

=item C<InUCSBlockElements>

=item C<InUCSBopomofo>

=item C<InUCSBoxDrawing>

=item C<InUCSBraillePatterns>

=item C<InUCSBuhid>

=item C<InUCSByzantineMusicalSymbols>

=item C<InUCSCharacterShapingSelectors>

=item C<InUCSCherokee>

=item C<InUCSCombiningDiacriticalMarks>

=item C<InUCSCombiningDiacriticalMarksForSymbols>

=item C<InUCSCombiningHalfMarks>

=item C<InUCSControlPictures>

=item C<InUCSCurrencySymbols>

=item C<InUCSCypriotSyllabary>

=item C<InUCSCyrillic>

=item C<InUCSCyrillicSupplementary>

=item C<InUCSDeseret>

=item C<InUCSDevanagari>

=item C<InUCSDingbats>

=item C<InUCSEnclosedAlphanumerics>

=item C<InUCSEnclosedCJKLettersAndMonths>

=item C<InUCSEthiopic>

=item C<InUCSEtruscan>

=item C<InUCSExtendedMyanmar>

=item C<InUCSFormatSeparators>

=item C<InUCSGeneralFormatCharacters>

=item C<InUCSGeneralPunctuation>

=item C<InUCSGeometricShapes>

=item C<InUCSGeorgianExtended>

=item C<InUCSGothic>

=item C<InUCSGreekExtended>

=item C<InUCSGreekSymbolsAndCoptic>

=item C<InUCSGujarati>

=item C<InUCSGurmukhi>

=item C<InUCSHalfwidthAndFullwidthForms>

=item C<InUCSHangulCompatibilityJamo>

=item C<InUCSHangulFillCharacters>

=item C<InUCSHangulJamo>

=item C<InUCSHangulSyllables>

=item C<InUCSHanunoo>

=item C<InUCSHebrewExtended>

=item C<InUCSHiragana>

=item C<InUCSIPAExtensions>

=item C<InUCSIdeographicDescriptionCharacters>

=item C<InUCSKangxiRadicals>

=item C<InUCSKannada>

=item C<InUCSKatakana>

=item C<InUCSKatakanaPhoneticExtensions>

=item C<InUCSKhmer>

=item C<InUCSLao>

=item C<InUCSLatin1Supplement>

=item C<InUCSLatinExtendedA>

=item C<InUCSLatinExtendedAdditional>

=item C<InUCSLatinExtendedB>

=item C<InUCSLetterlikeSymbols>

=item C<InUCSLimbu>

=item C<InUCSLinearBIdeograms>

=item C<InUCSLinearBSyllabary>

=item C<InUCSMalayalam>

=item C<InUCSMathematicalOperators>

=item C<InUCSMiscellaneousSymbols>

=item C<InUCSMiscellaneousTechnical>

=item C<InUCSMiscllaneousMathmaticalSymbols>

=item C<InUCSMongolian>

=item C<InUCSNumberForms>

=item C<InUCSNumericShapeSelectors>

=item C<InUCSOgham>

=item C<InUCSOpticalCharacterRecognition>

=item C<InUCSOriya>

=item C<InUCSOsmanya>

=item C<InUCSPart2>

=item C<InUCSPrivateUseArea>

=item C<InUCSPrivateUseGroups>

=item C<InUCSPrivateUsePlanes>

=item C<InUCSRunic>

=item C<InUCSScriptSpecificFormatCharacters>

=item C<InUCSShavian>

=item C<InUCSSinhala>

=item C<InUCSSip>

=item C<InUCSSmallFormVariants>

=item C<InUCSSmp>

=item C<InUCSSpacingModifierLetters>

=item C<InUCSSpecials>

=item C<InUCSSpp>

=item C<InUCSSuperscriptsAndSubscripts>

=item C<InUCSSupplementalArrows>

=item C<InUCSSupplementalArrowsC>

=item C<InUCSSupplementalCJKCompatibility>

=item C<InUCSSupplementalHangulA>

=item C<InUCSSupplementalHangulB>

=item C<InUCSSupplementalMathmaticalOperators>

=item C<InUCSSyriac>

=item C<InUCSTagalog>

=item C<InUCSTagbanwa>

=item C<InUCSTags>

=item C<InUCSTaiLe>

=item C<InUCSTamil>

=item C<InUCSTelugu>

=item C<InUCSThaana>

=item C<InUCSThai>

=item C<InUCSTibetan>

=item C<InUCSUgaritic>

=item C<InUCSUnicode>

=item C<InUCSUnifiedCanadianAboriginalSyllabics>

=item C<InUCSVariationSelectors>

=item C<InUCSVariationSelectorsSupplement>

=item C<InUCSWesternMusicalSymbols>

=item C<InUCSYiRadicals>

=item C<InUCSYiSyllables>

=item C<InUCSYijingHexagramSymbols>

=item C<InUCSZeroWidthBoundaryIndicators>

=item C<InUCS_BMP>

=item C<InUCS_BMPFirstEdition>

=item C<InUCS_BMPSecondEdition>

=item C<InUCS_BMP_AMD7>

=item C<InUCS_CJKCompatibility>

=item C<InUCS_CJKCompatibilityForms>

=item C<InUCS_CJKCompatibilityIdeographs>

=item C<InUCS_CJKCompatibilityIdeographsSupplement>

=item C<InUCS_CJKMiscellaneous>

=item C<InUCS_CJKRadicalsSupplement>

=item C<InUCS_CJKSymbolsAndPunctuation>

=item C<InUCS_CJKUnifiedIdeographs>

=item C<InUCS_CJKUnifiedIdeographsAll>

=item C<InUCS_CJKUnifiedIdeographsExtensionA>

=item C<InUCS_CJKUnifiedIdeographsExtensionB>

=item C<InUCS_MES1>

=item C<InUCS_MES2>

=item C<InUCS_MES3A>

=item C<InUCS_MES3B>

=back

=cut


=head1 EXAMPLE

 use Char::Class::UCS;
 if ($s =~ /\p{InIPAExtensions}/) {
   print "Match!\n";
 }

=head1 SEE ALSO

L<Char::Class::JISX0221>

L<Char::Class::RFC1815>

=head1 LICENSE

Copyright 2007 Wakaba <w@suika.fam.cx>

This library and the library generated by it is free software;
you can redistribute them and/or modify them under the same
terms as Perl itself.

=cut

1;
### UCS.pm ends here
