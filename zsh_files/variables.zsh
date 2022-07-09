##########################################
# Core Variables
##########################################
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR=nvim
export SHELL="$(which zsh)"
export SSH_KEY_PATH="$HOME/.ssh/rsa_id"
export VAULT_ADDR=https://vault.test.prosapient.app

export MY_ZSH="$HOME/.zshrc"
export MY_TMUX="$HOME/.tmux.conf"

export PLUG_EDITOR='nvim://open?file=__FILE__&line=__LINE__'

export NVIM_LISTEN_ADDRESS="/tmp/nvimsocket"

# This is to used to open files with NVIM using IEx.Helpers.open/1
export ELIXIR_EDITOR="tmux split-window -- nvim + __LINE__ __FILE__"

##########################################
# Setting up the Paths
##########################################
TMUXIFIER_PATH="$HOME/.tmuxifier"
ASDF_PATH="$HOME/.asdf"
STYLISH_HASKELL_PATH="$ASDF_PATH/installs/haskell/8.6.3/bin"
PROTOC_PATH="$HOME/.asdf/installs/elixir/1.11.3-otp-23/.mix/escripts"

##########################################
# Setting up the Bin Paths
##########################################
TMUXIFIER_BIN_PATH="$TMUXIFIER_PATH/bin"
HOME_BIN_PATH="$HOME/.bin"
HOME_BIN="$HOME/bin"
SBIN_PATH="/usr/local/sbin"

##########################################
# Build and Export the PATH
##########################################
export PATH="$TMUXIFIER_BIN_PATH:$HOME_BIN:$SBIN_PATH:$ASDF_PATH:$STYLISH_HASKELL_PATH:$HOME_BIN_PATH:$PROTOC_PATH:$PATH"
