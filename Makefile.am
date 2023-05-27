distdir = $(PACKAGE_NAME)-$(PACKAGE_VERSION)
dist_DATA = dist/.zshrc dist/.zprofile

dist/%: global/zsh/% $(OS_DIR)/zsh/%
	@mkdir -p $(distdir)/dist
	cat $^ > $(distdir)/$@

clean-local:
	-rm -rf $(distdir)

EXTRA_DIST = $(SOURCES)
