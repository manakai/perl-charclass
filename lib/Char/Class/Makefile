PERL = perl
RM = rm -fv
MODULES = Alphabet.pm Han.pm ISOIECTR10176.pm Hiragana.pm JISX0221.pm JISX4051.pm JISX4052.pm Kana.pm Katakana.pm RFC1815.pm UCS.pm XML.pm
MKPMLIB = mkpm.pl

all: $(MODULES)

%.pm: %-src.upl $(MKPMLIB)
	$(PERL) $< > $@
	$(PERL) -c $@

Hiragana.pm: Kana-src.upl $(MKPMLIB)
	$(PERL) $< --hiragana > $@
	$(PERL) -c $@

Katakana.pm: Kana-src.upl $(MKPMLIB)
	$(PERL) $< --katakana > $@
	$(PERL) -c $@

clean:
	$(RM) *~ .*~ *.BAK .*.BAK $(MODULES)
