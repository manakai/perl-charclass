PERL = perl
RM = rm -fv
WGET = wget

MODULES = Alphabet.pm Han.pm ISOIECTR10176.pm Hiragana.pm JISX0221.pm JISX4051.pm JISX4052.pm Kana.pm Katakana.pm RFC1815.pm UCS.pm XML.pm \
  JaInput.pm IDNBlacklist.pm
MKPMLIB = mkpm.pl

all: $(MODULES) clean-pod

%.pm: %-src.upl $(MKPMLIB)
	$(PERL) $< > $@
	$(PERL) -c $@

Hiragana.pm: Kana-src.upl $(MKPMLIB)
	$(PERL) $< --hiragana > $@
	$(PERL) -c $@

Katakana.pm: Kana-src.upl $(MKPMLIB)
	$(PERL) $< --katakana > $@
	$(PERL) -c $@

IDNBlacklist.pm: IDNBlacklist-src.upl mozilla-pref.js $(MKPMLIB)
	$(PERL) $< mozilla-pref.js > $@
	$(PERL) -c $@

mozilla-pref.js:
	$(WGET) -O $@ http://mxr.mozilla.org/mozilla-central/source/modules/libpref/src/init/all.js\?raw=1

clean: clean-pod
	$(RM) *~ .*~ *.BAK .*.BAK mozilla-pref.js

clean-pod:
	$(RM) *.tmp

distclean:
	$(MODULES) $(HTML_DOCUMENTS)
