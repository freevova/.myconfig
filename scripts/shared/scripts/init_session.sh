#!/bin/bash

SESSION=`basename $PWD`

# create session
tmux -2 new-session -d -s $SESSION

# rename main window
tmux rename-window -t $SESSION:1 workspace

# split and rasize panes on main
tmux split-window -v
tmux select-pane -t 1
tmux resize-pane -D 12
tmux select-pane -t 2
tmux split-window -h

# create processes window, create panes
tmux new-window -t $SESSION -a -n processes
tmux split-window -h
tmux split-window -v


# run commands

tmux select-window -t $SESSION:1

# run VIM
tmux select-pane -t 1
tmux send-keys 'vim' C-m

# run rails c
tmux select-pane -t 2
tmux send-keys 'rails c' C-m

# run rails s
tmux select-window -t $SESSION:2
tmux select-pane -t 1
tmux send-keys 'rails s' C-m

# run services in docker
tmux select-window -t $SESSION:2
tmux select-pane -t 2
tmux send-keys 'docker-compose -f ~/.private_config/shared/scripts/docker-compose.services.yml \
 -p services up' C-m



# select window and attach to session

tmux select-window -t $SESSION:1
tmux select-pane -t 1
tmux a -t $SESSION
