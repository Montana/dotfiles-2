[[ $TERM != "screen" ]] && exec tmux
NEWLINE=$'\n'
PROMPT="%~ ${NEWLINE}> %"
alias vim='nvim'
export FZF_DEFAULT_COMMAND="fd --hidden --follow --exclude '.git' --exclude 'node_modules'"
alias addtypescript='touch tsconfig.json && npm install --save-dev typescript @types/react @types/node'
alias jstotypescript='for foo in *.js; do mv $foo `basename $foo .js`.tsx; done'
tailwindnext() { npx create-next-app -e with-tailwindcss "$1" }

