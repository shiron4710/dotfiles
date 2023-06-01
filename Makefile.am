distdir = $(PACKAGE_NAME)-$(PACKAGE_VERSION)
dist_DATA = .zshrc .zprofile

%: global/zsh/% $(OS_DIR)/zsh/%
	@mkdir -p $(distdir)/zsh
	cat $^ > $(distdir)/zsh/$@

clean-local:
	-rm -rf $(distdir)

EXTRA_DIST = $(SOURCES)

.PHONY: install-stow
install-stow:
	$(STOW) -d $(distdir) -t ~ -v zsh

.PHONY: install
install: install-stow
