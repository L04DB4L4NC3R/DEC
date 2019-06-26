# All plugins are submodules. Run this to clone them into their respectful configs
r=$$(cat clone)

.PHONY: bootstrap
bootstrap:
	@echo "Making sure you have all of the dependancies..."
	sudo apt install vim terminator zsh

	@echo "Removing submodules"
	rm -rf ./.vim/bundle/*
	@echo "Cloning all plugins into .vim......"
	for f in $r; do $$(cd ./.vim/bundle && git clone $$f); done

	@echo "Copying new configuration...."
	@echo -n "This will replace your current configuration. Are you sure? [y/N] " && read ans && [ $${ans:-N} = y ]
	@echo "Proceeding....."
	@sleep 2
	rm -rf ~/.vimrc ~/.zshrc ~/.config/terminator ~/.vim
	cp -r .config/* ~/.config/
	cp -r .vim ~/
	cp .vimrc ~/
	cp .zshrc ~/

	@echo "Changing default shell to zsh..." 
	sudo chsh -s /bin/zsh 
	exec zsh
	exit