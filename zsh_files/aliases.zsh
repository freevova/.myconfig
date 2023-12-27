##########################################
# Core Aliases
##########################################
alias vrc="cd $HOME/.config/nvim && $EDITOR $HOME/.config/nvim/init.lua"
alias zrc="$EDITOR $MY_ZSH; source $ZSH"
alias trc="$EDITOR $MY_TMUX"

##########################################
# zsh/oh-my-zsh aliasies
##########################################
alias ohmyzsh="$EDITOR $ZSH"
alias reload!="source $MY_ZSH"

##########################################
# .myconfigs aliasies
##########################################
alias myconfigs="cd ~/.myconfig && $EDITOR"

##########################################
# Easier Navigation aliases
##########################################
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

##########################################
# Utility aliases
##########################################
# alias nvim="NVIM_LISTEN_ADDRESS=$NVIM_LISTEN_ADDRESS nvim"
alias svim="sudo nvim"
alias history-stat="history | awk '{print \$2}' | sort | uniq -c | sort -n -r | head"
alias o="open ."
alias jobs="jobs -l"
alias cl=clear
alias mkdir='mkdir -pv'

##########################################
# Tmux/Tmuxifier
##########################################
alias tmuxl='tmux list-sessions'
alias tmuxa='tmux attach'
# alias elixir-ide="tmuxifier load-session elixir-ide"
#
##########################################
# Elixir/Erlang
##########################################
alias miex='iex -S mix'
##########################################
# RUST powered utilities
##########################################
alias ls='exa'
# alias find='fd'
# alias grep='rg'
alias du='dust'
alias cat='bat'
alias time='hyperfine'
alias cloc='tokei'
# alias ps='procs'
# alias sed='sd'
alias top='btm --battery'
