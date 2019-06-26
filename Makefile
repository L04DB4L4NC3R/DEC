# All plugins are submodules. Run this to clone them into their respectful configs
r=$$(cat vim-plugins)

.PHONY: bootstrap
bootstrap:

	@echo "Bootstrapping system..."
	sudo apt-get update && sudo apt-get upgrade -y

	@echo "Making sure you have all of the dependancies..."
	mkdir ./.vim/bundle
	sudo apt install vim terminator zsh python-pip fonts-powerline # mono-xbuild mono-complete
	pip install ranger-fm

	@echo "Cloning all plugins into .vim......"
	for f in $r; do $$(cd ./.vim/bundle && git clone $$f); done

	@echo "Installing zsh dependancies...."
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#	git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
#	cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive && ./install.py --all
	exit


.PHONY: setup
setup:

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


.PHONY: tools
tools:

	@echo "Collecting tools...."
	sudo apt install autoconf libncursesw. cmake libncurses5-dev libncursesw5-dev 

	@echo "Installing htop....."
	git clone https://github.com/hishamhm/htop.git 
	cd htop && ./autogen.sh && ./configure && make

	@echo "Installing gotop....."
	git clone --depth 1 https://github.com/cjbassi/gotop /tmp/gotop 
	/tmp/gotop/scripts/download.sh
	sudo mv gotop /usr/local/bin

	@echo "cleaning up htop and gotop"
	rm -rf htop gotop 

	@echo "Installing nvtop....."
	( git clone https://github.com/Syllo/nvtop.git && \
	mkdir -p nvtop/build && cd nvtop/build && cmake .. -DNVML_RETRIEVE_HEADER_ONLINE=True && make && sudo make install ) || echo "nvidia drivers not installed, hence ignoring nvtop"

	@echo "Cleaning up nvtop"
	rm -rf nvtop

	exit
