#PERL = perl5.8.0
MKHAN_SCRIPT = mkhan.upl
MKHAN = $(PERL) ./$(MKHAN_SCRIPT)
RM = rm -fv

Han.pm: $(MKHAN_SCRIPT)
	$(MKHAN) > $@

clean:
	$(RM) *~ .*~ *.BAK .*.BAK Han.pm
