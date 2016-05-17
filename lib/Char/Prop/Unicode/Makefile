BINDIR = ../../../../bin/
GENERATOR = $(BINDIR)/generate-prop-module.pl
GENERATOR_PL = perl $(GENERATOR)

all: Age.pm BidiClass.pm 5_1_0/BidiClass.pm

Age.pm: ../../../../local/DerivedAge.txt $(GENERATOR)
	$(GENERATOR_PL) Age < $< > $@

BidiClass.pm: ../../../../local/DerivedBidiClass.txt $(GENERATOR)
	$(GENERATOR_PL) BidiClass < $< > $@

5_1_0/BidiClass.pm: ../../../../local/DerivedBidiClass-5.1.0.txt $(GENERATOR)
	$(GENERATOR_PL) 5_1_0::BidiClass < $< > $@

../../../../local/DerivedAge.txt:
	wget -O $@ http://www.unicode.org/Public/UNIDATA/DerivedAge.txt

../../../../local/DerivedBidiClass.txt:
	wget -O $@ http://www.unicode.org/Public/UNIDATA/extracted/DerivedBidiClass.txt

../../../../local/DerivedBidiClass-5.1.0.txt:
	wget -O $@ http://www.unicode.org/Public/5.1.0/ucd/extracted/DerivedBidiClass.txt

## License: Public Domain.
