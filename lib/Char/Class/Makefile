PERL = perl5.8.0
RM = rm -fv
MODULES = Han.pm

all: $(MODULES)

%.pm: %-src.upl
	$(PERL) $< > $@

clean:
	$(RM) *~ .*~ *.BAK .*.BAK $(MODULES)
