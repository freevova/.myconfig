##########################################
# Core Variables
##########################################
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR=nvim
export SHELL="$(which zsh)"
export SSH_KEY_PATH="$HOME/.ssh/rsa_id"

export MY_ZSH="$HOME/.zshrc"
export MY_TMUX="$HOME/.tmux.conf"
[[ $TMUX = "" ]] && export TERM="xterm-256color"
[[ $TMUX != "" ]] && export TERM="screen-256color"
export BAT_THEME="TwoDark"

##########################################
# Setting up the Paths
##########################################
TMUXIFIERPATH="$HOME/.tmuxifier"
ASDFPATH="$HOME/.asdf"
# POWERLINE_PATH="$HOME/Projects/Utilities/powerline"
# BASE16_SHELL="$HOME/.config/base16-shell/"

##########################################
# Setting up the Bin Paths
##########################################
TMUXIFIERBINPATH="$TMUXIFIERPATH/bin"
# ELIXIRBINPATH ="$ASDFPATH/installs/elixir/1.8.1-otp-21/bin"
HOMEBIN="$HOME/bin"
SBINPATH="/usr/local/sbin"

# export TMUXIFIER_LAYOUT_PATH="$HOME/.tmuxifier_layouts"

##########################################
# Build and Export the PATH
##########################################
export PATH="$TMUXIFIERBINPATH:$HOMEBIN:$SBINPATH:$PATH"

