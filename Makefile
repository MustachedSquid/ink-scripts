NAME = ink-scripts

PREFIX ?= /usr
SCRIPTS := $(wildcard ./scripts/*)

install:
	install -Dm 755 $(SCRIPTS) -t $(DESTDIR)$(PREFIX)/bin/
	install -Dm 644 LICENSE $(DESTDIR)$(PREFIX)/share/licenses/$(NAME)/LICENSE
	install -Dm 644 README.md $(DESTDIR)$(PREFIX)/share/doc/$(NAME)/README.md
	
.PHONY: install

