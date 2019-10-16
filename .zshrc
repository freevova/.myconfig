#########################################
# Volodymyr Gula's ZSH configuration
##########################################

# Path to your oh-my-zsh configuration.
ZSH=~/.oh-my-zsh
ZSH_CUSTOM="$ZSH/custom"

# Set name of the theme to load.
ZSH_THEME="bullet-train"
# ZSH_THEME="robbyrussell"

ZSH_AUTOSUGGEST_STRATEGY=match_prev_cmd
# ZSH_TMUX_AUTOSTART='true'

BULLETTRAIN_PROMPT_ORDER=(dir nvm elixir git)

plugins=(
  docker
  git
  github
  history-substring-search
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
  z
  zsh-autosuggestions
  zsh-completions
  zsh-more-completions
  zsh-syntax-highlighting
  tmuxinator
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
if [ -e ~/.myconfigs/zsh_files/fzf.zsh ]; then
  source ~/.myconfigs/zsh_files/fzf.zsh
fi

# Load the Variables file
if [ -e ~/.myconfigs/zsh_files/variables.zsh ]; then
  source ~/.myconfigs/zsh_files/variables.zsh
fi

# Load the Aliases file
if [ -e ~/.myconfigs/zsh_files/aliases.zsh ]; then
  source ~/.myconfigs/zsh_files/aliases.zsh
fi

# Load the Functions file
if [ -e ~/.myconfigs/zsh_files/functions.zsh ]; then
  source ~/.myconfigs/zsh_files/functions.zsh
fi

#########################################
# Exports
#########################################
export ZSH_CUSTOM
# export PATH=$HOME/.asdf/installs/elixir/1.8.1-otp-21/bin:$PATH

#########################################
# MARK:Sourcing
#########################################
source "$HOME/.oh-my-zsh/lib/key-bindings.zsh"
source "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"

#has all my aliases and functions
source ${ZSH_CUSTOM}/tmuxinator.zsh

##########################################
# Environment setups
##########################################

# Motivation reminder
echo "2019 12 31" | awk '{dt=mktime($0 " 00 00 00")-systime(); print "There are " int(dt/86400/7) " weeks left until the year ends. What will you do?";}'

# Load asdf configuration
[[ -d "$HOME/.asdf" ]] && {
  source $HOME/.asdf/asdf.sh
  source $HOME/.asdf/completions/asdf.bash
}

# direnv configuration
command -v direnv >/dev/null && {
  eval "$(direnv hook zsh)"
}

# Run info about OS
# screenfetch
