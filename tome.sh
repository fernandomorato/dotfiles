#!/usr/bin/env bash

# Maybe use a environment variable for the list of repositories to search
selected_session=$(find $HOME $HOME/work $HOME/personal -mindepth 1 -maxdepth 1 -type d | fzf)
if [[ -z $selected_session ]]; then
  exit 0
fi

session_name=$(basename "$selected_session" | tr . _)

# Check if the session already exists
tmux has-session -t "$session_name" 2>/dev/null
session_exists=$?

if [[ -n "$TMUX" ]]; then  # If already inside a tmux session
  if [[ $session_exists -eq 0 ]]; then
    tmux switch-client -t "$session_name"
  else
    tmux new-session -d -s "$session_name" -c "$selected_session"  # Start detached session
    tmux switch-client -t "$session_name"
  fi
else  # If outside tmux
  if [[ $session_exists -eq 0 ]]; then
    tmux attach-session -t "$session_name"
  else
    tmux new-session -s "$session_name" -c "$selected_session"
  fi
fi
