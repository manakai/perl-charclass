#!/bin/sh
find -name ChangeLog | xargs cvs diff | grep "^\+" | sed -e "s/^\+//; s/^\+\+ .\//++ charclass\//" > .cvslog.tmp
cvs commit -F .cvslog.tmp $1 $2 $3 $4 $5 $6 $7 $8 $9 
## TODO: Don't use -I here
perl \
    -I../manakai-core/lib/ \
    -I/home/httpd/html/www/markup/html/whatpm/ \
    mkcommitfeed.pl --file-name charclass-commit.en.atom.u8 \
    --feed-url http://suika.fam.cx/www/charclass/charclass-commit \
    --feed-title "CharClass ChangeLog diffs" \
    --feed-lang en \
    --feed-related-url "http://suika.fam.cx/www/charclass/readme" \
    --feed-license-url "http://suika.fam.cx/www/charclass/readme#license" \
    --feed-rights "This feed is free software; you can redistribute it and/or modify it under the same terms as Perl itself." \
    < .cvslog.tmp
cvs commit -m "" charclass-commit.en.atom.u8
rm .cvslog.tmp

## $Date: 2008/11/24 04:44:50 $
## License: Public Domain
