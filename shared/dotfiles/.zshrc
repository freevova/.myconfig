#{{{                    MARK:Exports
#**************************************************************
export LC_ALL="en_US.UTF-8"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="/Users/volodymyrgula:$PATH"
export PATH="/usr/local/opt/qt@5.5/bin:$PATH"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

export NVM_DIR="$HOME/.nvm"
export EDITOR=nvim
export MY_NVIM="$HOME/.config/nvim/init.vim"
export MY_VIM="$HOME/.vimrc"
export MY_ZSH="$HOME/.zshrc"
export MY_TMUX="$HOME/.tmux.conf"
export TERM=xterm-256color-italic
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/volodymyrgula/.oh-my-zsh
# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="bullet-train"
BULLETTRAIN_PROMPT_ORDER=(dir git)

#colors for common commands
[[ -f "$HOME/grc.zsh" ]] && source "$HOME/grc.zsh"

export SHELL="$(which zsh)"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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

#get rid of mercurial prompt
hg_prompt_info(){}
# User configuration

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

ZSH_AUTOSUGGEST_STRATEGY=match_prev_cmd

#}}}***********************************************************

#{{{                    MARK:Plugins
#**************************************************************
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(fzf-zsh zsh-more-completions zsh-completions zsh-autosuggestions zsh-syntax-highlighting history-substring-search ruby gem rake rails yarn ng coffee node npm perl cpanm git github gradle ant mvn scala lein spring django pip pyenv python go man nmap postgres redis-cli colorize sudo z rsync docker tmux vundle rust cargo meteor gulp grunt glassfish bundler cloudapp z ssh-agent)

[[ "$(uname)" == "Darwin" ]] && {
    plugins+=(zsh-xcode-completions bower brew osx pod)
} || {

    plugins+=(systemd)
    distroName="$(grep '^ID=' /etc/os-release | cut -d= -f2 | tr -d \")"

    case $distroName in
        (debian|raspbian|kali)
            plugins+=(debian)
            ;;
        (ubuntu)
            plugins+=(ubuntu)
            ;;
        (centos|rhel)
            plugins+=(yum dnf)
            ;;
        (fedora)
            plugins+=(yum fedora dnf)
            ;;
        (*) :
            ;;
    esac
}
#}}}***********************************************************


#{{{                    MARK:Sourcing
#**************************************************************
source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source "$HOME/.oh-my-zsh/lib/key-bindings.zsh"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

#has all my aliases and functions
source ~/.shell_aliases_functions.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

#}}}***********************************************************


#{{{                    MARK:TMUX
#**************************************************************
ZSH_TMUX_AUTOSTART='true'
#}}}***********************************************************


# . ~/z.sh
# . `brew --prefix`/etc/profile.d/z.sh


# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi



[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# NVM
#if [ -s ~/.nvm/nvm.sh ]; then
#	NVM_DIR=~/.nvm
#	source ~/.nvm/nvm.sh
#fi

eval "$(direnv hook zsh)"

