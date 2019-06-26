# All plugins are submodules. Run this to clone them into their respectful configs
r=$$(cat vim-plugins)

.PHONY: bootstrap
bootstrap:
	@echo "Making sure you have all of the dependancies..."
	mkdir ./.vim/bundle
	sudo apt install vim terminator zsh python-pip fonts-powerline
	pip install ranger-fm

	@echo "Cloning all plugins into .vim......"
	for f in $r; do $$(cd ./.vim/bundle && git clone $$f); done

	@echo "Installing zsh dependancies...."
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
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
	sudo apt install cmake libncurses5-dev libncursesw5-dev git
	git clone https://github.com/Syllo/nvtop.git
	mkdir -p nvtop/build && cd nvtop/build && cmake .. -DNVML_RETRIEVE_HEADER_ONLINE=True && make && sudo make install

	@echo "Cleaning up nvtop"
	rm -rf nvtop

	@echo "Opening...."
	nohup terminator -x zsh -c 'echo "Hello world"; exec htop' &
	nohup terminator -x zsh -c 'echo "Hello world"; exec gotop' &
	nohup terminator -x zsh -c 'echo "Hello world"; exec nvtop' &
	exit
