# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.

# For Window Swallowing
# https://github.com/salman-abedin/devour/ --> sudo pacman -S xdo (is a dependency)
# git clone https://github.com/salman-abedin/devour.git && cd devour && sudo make install
alias mpv="devour mpv"
alias feh="devour feh"

# For multi-core AUR builds
export MAKEFLAGS="-j$(nproc)"

export ZSH="/home/angad/.oh-my-zsh"

export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin
export PATH=$PATH:/usr/local/go/bin
export PATH="$PATH:$GOBIN:$HOME/.cargo/bin:$HOME/.local/bin"
export DENO_INSTALL="/home/angad/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# to be able to run qutebrowser as root
# export QTWEBENGINE_DISABLE_SANDBOX=1
# for newsboat
export BROWSER=qutebrowser
alias postwoman="docker run -p 3000:3000 -d --name postwoman liyasthomas/postwoman:latest"
# alias mpv="setsid -f mpv"
alias feh="setsid -f feh"

VISUAL=vim; export VISUAL EDITOR=vim; export EDITOR

if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

ZSH_THEME="zhann"
#ZSH_THEME="bira"
#ZSH_THEME="nebirhos"


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,underline"
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(git
				zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-autosuggestions


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

neofetch
#espeak -p 90 "you have spawned a new terminal" &>/dev/null
alias l="lsd -Al"
alias ls="lsd"

export JOPLIN_APIKEY=24e619d3f1f9eb515ea0285b4716c7c9913bb03b28dcb07ddcbaf8c4d9ffd764188f4a29412c09c067b9bd356ae81ee3e0c5ed619de5d693095b95b6a146707a
export JOPLIN_NOTEID=7c7ad2d5b20b4dd7b88712596a030e6d
