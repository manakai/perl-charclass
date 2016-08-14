all:

updatenightly: local/bin/pmbp.pl clean build
	curl https://gist.githubusercontent.com/wakaba/34a71d3137a52abb562d/raw/gistfile1.txt | sh
	git add t_deps/modules
	perl local/bin/pmbp.pl --update
	git add config lib/

clean: clean-json-ps
	rm -fr local/*.txt

## ------ Setup ------

WGET = wget
GIT = git
PERL = ./perl

deps: git-submodules pmbp-install

git-submodules:
	$(GIT) submodule update --init

local/bin/pmbp.pl:
	mkdir -p local/bin
	$(WGET) -O $@ https://raw.github.com/wakaba/perl-setupenv/master/bin/pmbp.pl
pmbp-upgrade: local/bin/pmbp.pl
	perl local/bin/pmbp.pl --update-pmbp-pl
pmbp-update: pmbp-upgrade git-submodules
	perl local/bin/pmbp.pl --update \
	    --write-makefile-pl Makefile.PL
pmbp-install: pmbp-upgrade
	perl local/bin/pmbp.pl --install \
            --create-perl-command-shortcut @perl \
            --create-perl-command-shortcut @prove

## ------ Build ------

build: build-deps build-main

build-deps: deps json-ps

build-main: \
    lib/Char/Class/Alphabet.pm \
    lib/Char/Class/Han.pm \
    lib/Char/Class/Hiragana.pm \
    lib/Char/Class/Katakana.pm \
    lib/Char/Class/Kana.pm \
    lib/Char/Class/IDNBlacklist.pm \
    lib/Char/Class/ISOIECTR10176.pm \
    lib/Char/Class/JISX0221.pm \
    lib/Char/Class/JISX4051.pm \
    lib/Char/Class/JISX4052.pm \
    lib/Char/Class/XML.pm \
    lib/Char/Class/JaInput.pm \
    lib/Char/Class/RFC1815.pm \
    lib/Char/Class/UCS.pm
	mkdir -p local
	cd lib/Char/Prop/Unicode && $(MAKE) all

lib/Char/Class/Alphabet.pm: bin/generate-class-module.pl local/sets.json
	$(PERL) $< Alphabet Latin \
	    'TCVN6909_2001=$$tcvn6909:chars' \
	    'TCVN6909<-TCVN6909_2001' \
	    'Vietnamese<-TCVN6909_2001' \
	> $@
	$(PERL) -c $@
lib/Char/Class/Han.pm: bin/generate-class-module.pl local/sets.json
	$(PERL) $< Han Han \
	    'JP_Touyou1949=$$kanji:touyou-1949' \
	    'JP_TouyouDraft1954=$$kanji:touyou-draft-1954' \
	    'JP_Jouyou1981=$$kanji:jouyou-1981' \
	    'JP_Kyouiku1989=$$kanji:kyouiku-1989' \
	    'JP_Kyouiku1st1989=$$kanji:kyouiku-1-1989' \
	    'JP_Kyouiku2nd1989=$$kanji:kyouiku-2-1989' \
	    'JP_Kyouiku3rd1989=$$kanji:kyouiku-3-1989' \
	    'JP_Kyouiku4th1989=$$kanji:kyouiku-4-1989' \
	    'JP_Kyouiku5th1989=$$kanji:kyouiku-5-1989' \
	    'JP_Kyouiku6th1989=$$kanji:kyouiku-6-1989' \
	    'JP_Jimmei1951=$$kanji:jimmei-1951' \
	    'JP_Jimmei1976=$$kanji:jimmei-1976' \
	    'JP_Jimmei1981=$$kanji:jimmei-1981' \
	    'JP_Jimmei1990=$$kanji:jimmei-1990' \
	    'JP_Jimmei1997=$$kanji:jimmei-1997' \
	    'JP_Hyougai2000=$$kanji:hyougai-2000' \
	    'JP_HyougaiStandard2000=$$kanji:hyougai-standard-2000' \
	    'JP_HyougaiSimplified2000=$$kanji:hyougai-simplified-2000' \
	    'SenjimonJP=$$kanji:senjimon' \
	    'JP_Hyougai<-JP_Hyougai2000' \
	    'JP_HyougaiStandard<-JP_HyougaiStandard2000' \
	    'JP_HyougaiSimplified<-JP_HyougaiSimplified2000' \
	    'JP_Jimmei<-JP_Jimmei1997' \
	    'JP_JimmeiKyoyou<-JP_JimmeiKyoyou1981' \
	    'JP_Jouyou<-JP_Jouyou1981' \
	    'JP_Kyouiku<-JP_Kyouiku1989' \
	    'JP_Kyouiku1st<-JP_Kyouiku1st1989' \
	    'JP_Kyouiku2nd<-JP_Kyouiku2nd1989' \
	    'JP_Kyouiku3rd<-JP_Kyouiku3rd1989' \
	    'JP_Kyouiku4th<-JP_Kyouiku4th1989' \
	    'JP_Kyouiku5th<-JP_Kyouiku5th1989' \
	    'JP_Kyouiku6th<-JP_Kyouiku6th1989' \
	    'JP_Kyouiku1998<-JP_Kyouiku1989' \
	    'JP_Kyouiku1st1998<-JP_Kyouiku1st1989' \
	    'JP_Kyouiku2nd1998<-JP_Kyouiku2nd1989' \
	    'JP_Kyouiku3rd1998<-JP_Kyouiku3rd1989' \
	    'JP_Kyouiku4th1998<-JP_Kyouiku4th1989' \
	    'JP_Kyouiku5th1998<-JP_Kyouiku5th1989' \
	    'JP_Kyouiku6th1998<-JP_Kyouiku6th1989' \
	    'JP_Touyou<-JP_Touyou1949' \
	    'Senjimon<-SenjimonJP' \
	> $@
	$(PERL) -c $@
lib/Char/Class/Hiragana.pm: bin/generate-class-module.pl local/sets.json
	$(PERL) $< Hiragana Hiragana \
	    'All=$$kana:hiragana-all' \
	    'Digraph=$$kana:hiragana-digraph' \
	    'Hatsuon=$$kana:hiragana-hatsuon' \
	    'Seion=$$kana:hiragana-seion' \
	    'SemiVoiced=$$kana:hiragana-semivoiced' \
	    'Small=$$kana:hiragana-small' \
	    'Voiced=$$kana:hiragana-voiced' \
	> $@
	$(PERL) -c $@
lib/Char/Class/Katakana.pm: bin/generate-class-module.pl local/sets.json
	$(PERL) $< Katakana Katakana \
	    'All=$$kana:katakana-all' \
	    'Digraph=$$kana:katakana-digraph' \
	    'Hatsuon=$$kana:katakana-hatsuon' \
	    'Seion=$$kana:katakana-seion' \
	    'SemiVoiced=$$kana:katakana-semivoiced' \
	    'Small=$$kana:katakana-small' \
	    'Voiced=$$kana:katakana-voiced' \
	> $@
	$(PERL) -c $@
lib/Char/Class/Kana.pm: bin/generate-class-module.pl local/sets.json
	$(PERL) $< Kana Kana \
	    'All=$$kana:kana-all' \
	    'Digraph=$$kana:kana-digraph' \
	    'Hatsuon=$$kana:kana-hatsuon' \
	    'Seion=$$kana:kana-seion' \
	    'SemiVoiced=$$kana:kana-semivoiced' \
	    'Small=$$kana:kana-small' \
	    'Voiced=$$kana:kana-voiced' \
	> $@
	$(PERL) -c $@
lib/Char/Class/IDNBlacklist.pm: bin/generate-class-module.pl local/sets.json
	$(PERL) $< IDNBlacklist IDNBlacklist 'Chars=$$mozilla:IDN-blacklist-chars' > $@
	$(PERL) -c $@
lib/Char/Class/ISOIECTR10176.pm: bin/generate-class-module.pl local/sets.json
	$(PERL) $< ISOIECTR10176 ISOIECTR10176 \
	    'Latin=$$isoiectr10176-1998:latin' \
	    'Greek=$$isoiectr10176-1998:greek' \
	    'Arabic=$$isoiectr10176-1998:arabic' \
	    'Armenian=$$isoiectr10176-1998:armenian' \
	    'Bengali=$$isoiectr10176-1998:bengali' \
	    'Bopomofo=$$isoiectr10176-1998:bopomofo' \
	    'CJKUnifiedIdeographs=$$isoiectr10176-1998:cjk-unified-ideographs' \
	    'Cyrillic=$$isoiectr10176-1998:cyrillic' \
	    'Devanagari=$$isoiectr10176-1998:devanagari' \
	    'Digits=$$isoiectr10176-1998:digits' \
	    'Georian=$$isoiectr10176-1998:georian' \
	    'Gujarati=$$isoiectr10176-1998:gujarati' \
	    'Gurmukhi=$$isoiectr10176-1998:gurmukhi' \
	    'Hangul=$$isoiectr10176-1998:hangul' \
	    'Hebrew=$$isoiectr10176-1998:hebrew' \
	    'Hiragana=$$isoiectr10176-1998:hiragana' \
	    'Kannada=$$isoiectr10176-1998:kannada' \
	    'Katakana=$$isoiectr10176-1998:katakana' \
	    'Lao=$$isoiectr10176-1998:lao' \
	    'Malayalam=$$isoiectr10176-1998:malayalam' \
	    'Oriya=$$isoiectr10176-1998:oriya' \
	    'Special=$$isoiectr10176-1998:special' \
	    'Tamil=$$isoiectr10176-1998:tamil' \
	    'Telugur=$$isoiectr10176-1998:telugur' \
	    'Thai=$$isoiectr10176-1998:thai' \
	    'Tibetan=$$isoiectr10176-1998:tibetan' \
	> $@
	$(PERL) -c $@
lib/Char/Class/JISX0221.pm: bin/generate-class-module.pl local/sets.json
	$(PERL) $< JISX0221 JISX0221 \
	    'BasicJapanese=$$jisx0221-2001:basic-japanese' \
	    'FullwidthAlphanumeric=$$jisx0221-2001:fullwidth-alphanumerics' \
	    'HalfwidthKatakana=$$jisx0221-2001:halfwidth-katakana' \
	    'JapaneseIdeographicsSupplement1=$$jisx0221-2001:japanese-ideographics-supplement-1' \
	    'JapaneseIdeographicsSupplement2=$$jisx0221-2001:japanese-ideographics-supplement-2' \
	    'JapaneseIdeographicsSupplement3=$$jisx0221-2001:japanese-ideographics-supplement-3' \
	    'JapaneseNonIdeographicsSupplement=$$jisx0221-2001:japanese-non-ideopgrahics-supplement' \
	> $@
	$(PERL) -c $@
lib/Char/Class/JISX4051.pm: bin/generate-class-module.pl local/sets.json
	$(PERL) $< JISX4051 JISX4051 \
	    'AlphabeticExceptSpace=$$jisx4051-1995:western-non-space' \
	    'AlphabeticSpace=$$jisx4051-1995:western-space' \
	    'CharacterInDigits=$$jisx4051-1995:numbers' \
	    'CharacterInUnitSymbol=$$jisx4051-1995:units' \
	    'CloseBracket=$$jisx4051-1995:close-brackets' \
	    'FullStop=$$jisx4051-1995:full-stops' \
	    'Hiragana=$$jisx4051-1995:hiragana' \
	    'JapaneseSpace=$$jisx4051-1995:japanese-space' \
	    'LineStartKinsokuJapaneseCharacter=$$jisx4051-1995:kinsoku' \
	    'MiddleDot=$$jisx4051-1995:middle-dots' \
	    'MiscJapaneseCharacter=$$jisx4051-1995:misc-japanese' \
	    'OpenBracket=$$jisx4051-1995:open-brackets' \
	    'PostShortenedSymbol=$$jisx4051-1995:suffixes' \
	    'PreShortenedSymbol=$$jisx4051-1995:prefixes' \
	    'SeparationSymbol=$$jisx4051-1995:separators' \
	    'UnseparatableCharacter=$$jisx4051-1995:unseparatable' \
	    'WarichuuCloseBracket=$$jisx4051-1995:inline-annotation-close' \
	    'WarichuuOpenBracket=$$jisx4051-1995:inline-annotation-open' \
	> $@
	$(PERL) -c $@
lib/Char/Class/JISX4052.pm: bin/generate-class-module.pl local/sets.json
	$(PERL) $< JISX4052 JISX4052 \
	    'Alphabetic=$$jisx4052:western-all' \
	    'AlphabeticBasic=$$jisx4052:western-basic' \
	    'AlphabeticRecommended=$$jisx4052:western-recommended' \
	    'Digits=$$jisx4052:numbers' \
	    'KanaCharacter=$$jisx4052:kana' \
	    'Kenten=$$jisx4052:emphases' \
	> $@
	$(PERL) -c $@
lib/Char/Class/JaInput.pm: bin/generate-class-module.pl local/sets.json
	$(PERL) $< JaInput JaInput \
	    'Yomi=$$jisx4062-1998:yomi-char' \
	    'Boin=$$jisx4063-2000:boin' \
	    'Shiin=$$jisx4063-2000:shiin' \
	    'Digit=$$jisx4064-2002:digit' \
	    'Hiragana=$$jisx4064-2002:hiragana' \
	    'HiraganaMin=$$jisx4064-2002:hiragana-required' \
	    'Katakana=$$jisx4064-2002:katakana' \
	    'KatakanaMin=$$jisx4064-2002:katakana-required' \
	    'KanaSymbol=$$jisx4064-2002:kana-symbol' \
	    'Latin=$$jisx4064-2002:latin' \
	    'LatinCapital=$$jisx6002-1980:alpha-upper' \
	    'LatinSmall=$$jisx6002-1980:alpha-lower' \
	    'KeyKatakana=$$jisx6002-1980:katakana' \
	    'EnglishSymbol=$$jisx6002-1980:special-alpha' \
	    'KatakanaSymbol=$$jisx6002-1980:special-katakana' \
	> $@
	$(PERL) -c $@
lib/Char/Class/RFC1815.pm: bin/generate-class-module.pl local/sets.json
	$(PERL) $< RFC1815 RFC1815 \
	    'ISO10646J1=$$rfc1815:ISO-10646-J-1' \
	> $@
	$(PERL) -c $@
local/ucs.sh: ucs-list.txt
	echo exec $(PERL) bin/generate-class-module.pl UCS UCS \\ > $@
	cat $< | perl -n -e 'sub n ($$) { $$x = ucfirst lc $$_[0]; $$x =~ s/[ -](.)/uc $$1/ge; $$x =~ s/Cjk/CJK/g; $$x =~ s/^CJK/_CJK/g; $$x } sub l ($$) { $$x = $$_[0]; $$x =~ s/ /-/g; $$x } s{^(\d+) (.+)}{qq{\x27$$1<-}.n($$2).qq{\x27 \\\n\x27}.n($$2).qq{=\x24isoiec10646:}.l($$2).qq{\x27 \\}}e; print $$_' >> $@
	echo "'5<-IPAExtensions' \\" >> $@
	echo "'IPAExtensions="'$$isoiec10646:ipa-extensions'"' \\" >> $@
	echo "'300<-_BMP' \\" >> $@
	echo "'_BMP="'$$isoiec10646:bmp'"' \\" >> $@
	echo "'299<-_BMPFirstEdition' \\" >> $@
	echo "'_BMPFirstEdition="'$$isoiec10646:bmp-first-edition-code-point'"' \\" >> $@
	echo "'301<-_BMP_AMD7' \\" >> $@
	echo "'_BMP_AMD7="'$$isoiec10646:bmp-amd-7'"' \\" >> $@
	echo "'302<-_BMPSecondEdition' \\" >> $@
	echo "'_BMPSecondEdition="'$$isoiec10646:bmp-second-edition'"' \\" >> $@
	echo "'281<-_MES1' \\" >> $@
	echo "'_MES1="'$$isoiec10646:mes1'"' \\" >> $@
	echo "'282<-_MES2' \\" >> $@
	echo "'_MES2="'$$isoiec10646:mes2'"' \\" >> $@
	echo "'283<-_MES3A' \\" >> $@
	echo "'_MES3A="'$$isoiec10646:mes3a'"' \\" >> $@
	echo "'284<-_MES3B' \\" >> $@
	echo "'_MES3B="'$$isoiec10646:mes3b'"' \\" >> $@
	echo '' >> $@
lib/Char/Class/UCS.pm: bin/generate-class-module.pl local/sets.json local/ucs.sh
	sh local/ucs.sh > $@
	$(PERL) -c $@
lib/Char/Class/XML.pm: bin/generate-class-module.pl local/sets.json
	$(PERL) $< XML XML \
	    'Char10=$$xml10-5e:Char' \
	    'Char11=$$xml11:Char' \
	    'Char<-Char11' \
	    'RestrictedChar11=$$xml11:RestrictedChar' \
	    'RestrictedChar<-RestrictedChar11' \
	    'S=$$xml10-5e:S' \
	    'BaseChar=$$xml10-5e:BaseChar' \
	    'Ideographic=$$xml10-5e:Ideographic' \
	    'CombiningChar=$$xml10-5e:CombiningChar' \
	    'Digit=$$xml10-5e:Digit' \
	    'Extender=$$xml10-5e:Extender' \
	    'Letter=$$xml10-5e:Letter' \
	    'NameChar10_1=$$xml10-4e:NameChar' \
	    'NameChar10_5=$$xml10-5e:NameChar' \
	    'NameChar10<-NameChar10_5' \
	    'NameChar11=$$xml11:NameChar' \
	    'NameChar<-NameChar10_5' \
	    'NCNameChar10_1=$$xml10-4e:NCNameChar' \
	    'NCNameChar10_5=$$xml10-5e:NCNameChar' \
	    'NCNameChar10<-NCNameChar10_5' \
	    'NCNameChar11=$$xml11:NCNameChar' \
	    'NCNameChar<-NCNameChar10_5' \
	    '_NCNameStartChar10_1=$$xml10-4e:NCNameStartChar' \
	    '_NameStartChar10_1=$$xml10-4e:NameStartChar' \
	    'NameStartChar10_5=$$xml10-5e:NameStartChar' \
	    'NameStartChar10<-NameStartChar10_5' \
	    '_NameStartChar10<-NameStartChar10_5' \
	    'NameStartChar11=$$xml11:NameStartChar' \
	    'NameStartChar<-NameStartChar10_5' \
	    '_NameStartChar<-NameStartChar10_5' \
	    'NCNameStartChar10_5=$$xml10-5e:NCNameStartChar' \
	    'NCNameStartChar10<-NCNameStartChar10_5' \
	    '_NCNameStartChar10<-NCNameStartChar10_5' \
	    'NCNameStartChar<-NCNameStartChar10_5' \
	    '_NCNameStartChar<-NCNameStartChar10_5' \
	    'NCNameStartChar11=$$xml11:NCNameStartChar' \
	    '_UnrestrictedChar10=$$xml10-5e:unrestricted-char' \
	    '_UnrestrictedChar11=$$xml11:unrestricted-char' \
	    '_UnrestrictedChar<-_UnrestrictedChar11' \
	    'VersionNum=$$xml10-5e:VersionNum-char' \
	    'PubidChar=$$xml10-5e:PubidChar' \
	    '_deprecated_noncharacter=$$xml10-5e:discouraged' \
	    '_unicode_xml_not_suitable=$$unicode-xml:not-suitable' \
	    '_unicode_xml_suitable_format_character=$$unicode-xml:suitable' \
	> $@
	$(PERL) -c $@

local/sets.json:
	$(WGET) -O $@ https://raw.githubusercontent.com/manakai/data-chars/master/data/sets.json

json-ps: local/perl-latest/pm/lib/perl5/JSON/PS.pm
clean-json-ps:
	rm -fr local/perl-latest/pm/lib/perl5/JSON/PS.pm
local/perl-latest/pm/lib/perl5/JSON/PS.pm:
	mkdir -p local/perl-latest/pm/lib/perl5/JSON
	$(WGET) -O $@ https://raw.githubusercontent.com/wakaba/perl-json-ps/master/lib/JSON/PS.pm

## ------ Tests ------

PROVE = ./prove

test: test-deps test-main

test-deps: deps

test-main:
	$(PROVE) t/*/*.t

always:

## License: Public Domain.
