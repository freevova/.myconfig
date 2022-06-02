##########################################
# Volodymyr Gula's ZSH configuration
##########################################

# Path to your oh-my-zsh configuration.
ZSH="$HOME/.oh-my-zsh"
ZSH_CUSTOM="$ZSH/custom"
ZSH_AUTOSUGGEST_STRATEGY=match_prev_cmd
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern root)

plugins=(
  asdf
  docker
  git
  github
  heroku
  history-substring-search
  kubectl
  man
  mix
  node
  npm
  postgres
  rsync
  rust
  ssh-agent
  sudo
  vi-mode
  yarn
  tmuxinator
  z
  zsh-autosuggestions
  zsh-completions
  zsh-more-completions
  zsh-syntax-highlighting
)


##########################################
# Load External configurationf files
##########################################
# Load oh-my-zsh
if [ -e $ZSH/oh-my-zsh.sh ]; then
  source $ZSH/oh-my-zsh.sh
fi

# Load the secrets file
if [ -e ~/.secrets ]; then
  source ~/.secrets
fi

# Load the FZF completion
if [ -e ~/.myconfig/zsh_files/fzf.zsh ]; then
  source ~/.myconfig/zsh_files/fzf.zsh
fi

# Load the Variables file
if [ -e ~/.myconfig/zsh_files/variables.zsh ]; then
  source ~/.myconfig/zsh_files/variables.zsh
fi

# Load the Aliases file
if [ -e ~/.myconfig/zsh_files/aliases.zsh ]; then
  source ~/.myconfig/zsh_files/aliases.zsh
fi

# Load the Functions file
if [ -e ~/.myconfig/zsh_files/functions.zsh ]; then
  source ~/.myconfig/zsh_files/functions.zsh
fi


#########################################
# MARK:Sourcing
#########################################
source "$ZSH/lib/key-bindings.zsh"
source "$ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$ZSH/plugins/history-substring-search/history-substring-search.zsh"
source "$ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "/usr/share/fzf/completion.zsh"
source "/usr/share/fzf/key-bindings.zsh"


##########################################
# Environment setups
##########################################

# Motivation reminder
echo "2019 12 31" | awk '{dt=mktime($0 " 00 00 00")-systime(); print "There are " int(dt/86400/7) " weeks left until the year ends. What will you do?";}'

# direnv configuration
command -v direnv >/dev/null && {
  eval "$(direnv hook zsh)"
}

# starship configuration
eval "$(starship init zsh)"

# Color output in console
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

# Run info about OS
# screenfetch
