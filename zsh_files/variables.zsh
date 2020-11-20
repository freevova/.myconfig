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

# Set $TERM variable
[[ $TMUX = "" ]] && export TERM="xterm-256color-italic"
[[ $TMUX != "" ]] && export TERM="tmux-256color"
# [[ $TMUX = "" ]] && export TERM="xterm-256color"
# [[ $TMUX != "" ]] && export TERM="screen-256color"

# export BAT_THEME="TwoDark"

export NVIM_LISTEN_ADDRESS="/tmp/nvimsocket"

# This is to used to open files with NVIM using IEx.Helpers.open/1
export ELIXIR_EDITOR="tmux split-window -- nvim + __LINE__ __FILE__"

##########################################
# Setting up the Paths
##########################################
TMUXIFIER_PATH="$HOME/.tmuxifier"
ASDF_PATH="$HOME/.asdf"
STYLISH_HASKELL_PATH="$ASDF_PATH/installs/haskell/8.6.3/bin"
# POWERLINE_PATH="$HOME/Projects/Utilities/powerline"
# BASE16_SHELL="$HOME/.config/base16-shell/"

##########################################
# Setting up the Bin Paths
##########################################
TMUXIFIER_BIN_PATH="$TMUXIFIER_PATH/bin"
# TMUXINATOR_PATH="$ZSH_CUSTOM/_tmuxinator"
HOME_BIN_PATH="$HOME/.bin"
# ELIXIRBINPATH ="$ASDFPATH/installs/elixir/1.8.1-otp-21/bin"
HOME_BIN="$HOME/bin"
SBIN_PATH="/usr/local/sbin"

# export TMUXIFIER_LAYOUT_PATH="$HOME/.tmuxifier_layouts"

##########################################
# Build and Export the PATH
##########################################
export PATH="$TMUXIFIER_BIN_PATH:$HOME_BIN:$SBIN_PATH:$ASDF_PATH:$STYLISH_HASKELL_PATH:$HOME_BIN_PATH:$PATH"
