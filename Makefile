.PHONY: install uninstall clean

HAMMERSPOON_DIR = $(HOME)/.hammerspoon
CONFIG_FILE = init.lua

install:
	@echo "Installing Hammerspoon configuration..."
	@mkdir -p $(HAMMERSPOON_DIR)
	@cp $(CONFIG_FILE) $(HAMMERSPOON_DIR)/
	@echo "Configuration installed. Please reload Hammerspoon (Cmd + Shift + R)"

uninstall:
	@echo "Uninstalling Hammerspoon configuration..."
	@rm -f $(HAMMERSPOON_DIR)/$(CONFIG_FILE)
	@echo "Configuration removed"

clean:
	@echo "Cleaning up..."
	@rm -f *~
