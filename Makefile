PREFIX = /usr/local

amb: amb.sh amb.awk amb.tsv
	cat amb.sh > $@
	echo 'exit 0' >> $@
	echo '#EOF' >> $@
	tar cz amb.awk amb.tsv >> $@
	chmod +x $@

test: amb.sh
	shellcheck -s sh amb.sh

clean:
	rm -f amb

install: amb
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f amb $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/amb

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/amb

.PHONY: test clean install uninstall
