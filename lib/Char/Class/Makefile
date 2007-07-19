PERL = perl
RM = rm -fv
POD2HTML = pod2html --css "http://suika.fam.cx/www/style/html/pod.css" \
  --htmlroot "../.."

MODULES = Alphabet.pm Han.pm ISOIECTR10176.pm Hiragana.pm JISX0221.pm JISX4051.pm JISX4052.pm Kana.pm Katakana.pm RFC1815.pm UCS.pm XML.pm \
  JaInput.pm
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

clean: clean-pod
	$(RM) *~ .*~ *.BAK .*.BAK

clean-pod:
	$(RM) *.tmp

distclean:
	$(MODULES) $(HTML_DOCUMENTS)
