POD2HTML = pod2html --css "http://suika.fam.cx/www/style/html/pod.css" \
  --htmlroot "../.."

all: FullwidthHalfwidth.html

%.html: %.pod
	$(POD2HTML) $< > $@

## $Date: 2008/11/24 04:25:11 $
## License: Public Domain.
