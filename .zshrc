[[ $TERM != "screen" ]] && exec tmux
NEWLINE=$'\n'
PROMPT="%~ ${NEWLINE}> %"
alias vim='nvim'
export FZF_DEFAULT_COMMAND="fd --hidden --follow --exclude '.git' --exclude 'node_modules'"
