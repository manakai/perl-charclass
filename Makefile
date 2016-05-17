all:

updatenightly: local/bin/pmbp.pl
	curl https://gist.githubusercontent.com/wakaba/34a71d3137a52abb562d/raw/gistfile1.txt | sh
	git add modules t_deps/modules
	perl local/bin/pmbp.pl --update
	git add config lib/

## ------ Setup ------

WGET = wget
GIT = git

deps: git-submodules pmbp-install

git-submodules:
	$(GIT) submodule update --init

local/bin/pmbp.pl:
	mkdir -p local/bin
	$(WGET) -O $@ https://raw.github.com/wakaba/perl-setupenv/master/bin/pmbp.pl
pmbp-upgrade: local/bin/pmbp.pl
	perl local/bin/pmbp.pl --update-pmbp-pl
pmbp-update: pmbp-upgrade
	perl local/bin/pmbp.pl --update \
	    --write-makefile-pl Makefile.PL
pmbp-install: pmbp-upgrade
	perl local/bin/pmbp.pl --install \
            --create-perl-command-shortcut perl \
            --create-perl-command-shortcut prove

## ------ Tests ------

PROVE = ./prove

test: test-deps test-main

test-deps: deps

test-main:
	$(PROVE) t/*/*.t
