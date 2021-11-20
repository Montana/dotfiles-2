source ~/.config/git/git-prompt.sh
autoload -U colors && colors
[[ $TERM != "screen" ]] && exec tmux
NEWLINE=$'\n'
setopt PROMPT_SUBST ; PS1='%{$fg[magenta]%}%~ ${NEWLINE}%{$fg[green]%}$(__git_ps1 "(%s)") %{$reset_color%} ${NEWLINE}> '

alias reload='source ~/.zshrc'
alias vim='nvim'
alias prisma='npm run prisma-studio'
export FZF_DEFAULT_COMMAND="fd --hidden --follow --exclude '.git' --exclude 'node_modules'"
alias addtypescript='touch tsconfig.json && npm install --save-dev typescript @types/react @types/node'
alias jstotypescript='for foo in *.js; do mv $foo `basename $foo .js`.tsx; done'
tailwindnext() { npx create-next-app -e with-tailwindcss "$1" }

