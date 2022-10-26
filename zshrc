# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH="$PATH:/opt/android/android-sdk-linux/platform-tools/:/home/martin/.cargo/bin/"
export PATH="$PATH:/usr/local/Cellar/llvm/10.0.0_3/bin/"
export PATH="$PATH:$HOME/opt/GNAT/2020/bin"
export PATH="$PATH:$HOME/.rvm/bin"

export LLVMDIR=/Users/martin/Developer/tum/ss21/bsc/llvm-project/build/bin

# Path to your oh-my-zsh installation.
export ZSH=$HOME/dotfiles/oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
if [[ $TERM == xterm-256color ]]; then
    #ZSH_THEME="agnoster"
    #ZSH_THEME="bullet-train"
    ZSH_THEME="powerlevel10k/powerlevel10k"
    # powerlevel9k customizations
    POWERLEVEL9K_PROMPT_ON_NEWLINE=false
    POWERLEVEL9K_MODE='nerdfont-complete'
    POWERLEVEL9K_STATUS_VERBOSE=false
    POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
    POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator dir vcs) # vcs
    POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs command_execution_time) # ip public_ip
    POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=1
    POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=5
    POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
    POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

else
    ZSH_THEME="alanpeabody"
fi

fpath+=~/.zfunc

export PATH="$PATH:$HOME/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin/:/usr/local/bin/flutter/bin:$HOME/.fastlane/bin/:$HOME/Library/Android/sdk/platform-tools/:$HOME/.local/bin:$HOME/Library/Python/3.7/bin"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git wd)

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

LC_CTYPE=en_DE.UTF-8
LC_ALL=en_DE.UTF-8

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nvim ~/.zshrc && source ~/.zshrc"
# alias ohmyzsh="vim ~/.oh-my-zsh"

alias c='clear'

alias ls='exa --icons'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ll='ls -lah'
alias la='ls -A'

alias wanip='dig @resolver1.opendns.com ANY myip.opendns.com +short'

# needed to sign git commits with gpg2
export GPG_TTY=$(tty)

ssh-add -K 2> /dev/null

alias konvertovpn='sudo openconnect --authgroup=ROL-Mitarbeiter -u "DROL\sfinm" --juniper https://access.argo.bz.it/rol --servercert sha256:9950cbad61d5547ff9359c128bc851017e3a85ee040b8c46dabb42efa055fe4e'

alias vi=nvim


source /Users/martin/Library/Preferences/org.dystroy.broot/launcher/bash/br

[ -f ./fzf.zsh ] && source ./fzf.zsh


export HOMEBREW_NO_AUTO_UPDATE=1


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

