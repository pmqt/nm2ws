PREFIX = /usr/local
TARGETS = nm2ws

.PHONY: install
install: $(TARGETS)
	mkdir -p $(PREFIX)/bin
	install $^ $(PREFIX)/bin
