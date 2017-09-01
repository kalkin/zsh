.DEFAULT_GOAL := about

XDG_CONFIG_HOME ?= $(HOME)/.config
TARGET_DIR 	= $(XDG_CONFIG_HOME)/zsh
ZSH_DATA	= $(HOME)/.local/share/zsh
ZSH_FILES 	= $(shell find . -name '*.zsh') zsh-syntax-highlighting/.version zsh-syntax-highlighting/.revision-hash zaw/functions/fill-vars-or-accept zaw/functions/filter-select
TARGETS 	= $(addprefix $(TARGET_DIR)/,$(ZSH_FILES))

$(TARGET_DIR)/%: %
	install -d $(@D)
	install $< $(@D)

$(HOME)/.zshrc: zshrc
	cp zshrc $(HOME)/.zshrc

$(ZSH_DATA):
	install -d $(ZSH_DATA)

install: $(TARGETS) $(HOME)/.zshrc $(ZSH_DATA)

about:
	cat README.md

uninstall:
	rm -f $(TARGETS)
	rm -f $(HOME)/.zshrc
	rm -rf $(TARGET_DIR)/zsh-syntax-highlighting
	rm -rf $(TARGET_DIR)/zaw
	rm -rf $(TARGET_DIR)/zsh-autosuggestions
	$(shell rmdir --ignore-fail-on-non-empty $(TARGET_DIR)/units)
	$(shell rmdir --ignore-fail-on-non-empty $(TARGET_DIR))

reinstall: uninstall install
