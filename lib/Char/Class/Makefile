PERL = perl5.8.0
RM = rm -fv
MODULES = Alphabet.pm Han.pm Hiragana.pm JISX0221.pm Kana.pm Katakana.pm UCS.pm
MKPMLIB = mkpm.pl

all: $(MODULES)

%.pm: %-src.upl $(MKPMLIB)
	$(PERL) $< > $@

Hiragana.pm: Kana-src.upl $(MKPMLIB)
	$(PERL) $< --hiragana > $@

Katakana.pm: Kana-src.upl $(MKPMLIB)
	$(PERL) $< --katakana > $@

clean:
	$(RM) *~ .*~ *.BAK .*.BAK $(MODULES)
