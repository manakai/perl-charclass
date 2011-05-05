PERL = perl
RM = rm -fv
WGET = wget
POD2HTML = pod2html --css "http://suika.fam.cx/www/style/html/pod.css" \
  --htmlroot "../.."

MODULES = Alphabet.pm Han.pm ISOIECTR10176.pm Hiragana.pm JISX0221.pm JISX4051.pm JISX4052.pm Kana.pm Katakana.pm RFC1815.pm UCS.pm XML.pm \
  JaInput.pm IDNBlacklist.pm
HTML_DOCUMENTS = $(MODULES:.pm=.html)
MKPMLIB = mkpm.pl

all: $(MODULES) $(HTML_DOCUMENTS) clean-pod

%.pm: %-src.upl $(MKPMLIB)
	$(PERL) $< > $@
	$(PERL) -c $@

%.html: %.pm
	$(POD2HTML) $< > $@

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
