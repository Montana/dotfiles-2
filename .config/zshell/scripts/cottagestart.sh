#! /bin/zsh
tmux rename-session "cottage"
cd ~/Desktop/Software_development/cottage/cottage-app 
tmux send-keys "cd ~/Desktop/Software_development/cottage/cottage-app" Enter
tmux send-keys "npm run dev" Enter
tmux split-window -h
tmux send-keys "git status" Enter
tmux select-pane -L
tmux split-window
tmux send-keys "npm run prisma-studio" Enter
tmux split-window
tmux send-keys "docker compose up" Enter
tmux select-pane -R
open -a /Applications/Firefox.app
open https://github.com/joincottage/cottage-app/projects/1
#/usr/bin/osascript -e 'tell application "Safari"' -e "activate" -e 'tell application "System Events"' -e 'keystroke "f" using {control down, command down}' -e "end tell" -e "end tell"

