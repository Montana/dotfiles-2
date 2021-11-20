#! /bin/zsh
cd ~/Desktop/Software_development/cottage/cottage-app 
tmux send-keys "cd ~/Desktop/Software_development/cottage/cottage-app" Enter
tmux send-keys "npm run dev" Enter
tmux split-window -h
tmux send-keys "git status" Enter
tmux select-pane -L
tmux split-window
tmux send-keys "prisma" Enter
open -a /Applications/Firefox.app
open https://github.com/joincottage/cottage-app/projects/1


