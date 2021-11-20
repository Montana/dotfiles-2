# launch tmux on start
[[ $TERM != "screen" ]] && exec tmux

# source prompt file
source ~/.config/zshell/prompt

# source alias files {{{
# ==============================================================================
source ~/.config/zshell/alias/vim
alias avim="more ~/.config/zshell/alias/vim"

source ~/.config/zshell/alias/git
alias agit="more ~/.config/zshell/alias/git"

source ~/.config/zshell/alias/tmux
alias atmux="more ~/.config/zshell/alias/tmux"

source ~/.config/zshell/alias/shell
alias ashell="more ~/.config/zshell/alias/shell"

source ~/.config/zshell/alias/react
alias areact="more ~/.config/zshell/alias/react"


# source project jumps
source ~/.config/zshell/alias/project
alias aproject="more ~/.config/zshell/alias/react"
# source alias files }}}
# ==============================================================================

# quicly edit config files
alias zshrc='nvim ~/.zshrc'
alias vimrc='nvim ~/.config/nvim/init.vim'


alias prisma='npm run prisma-studio'
# testing
export FZF_DEFAULT_COMMAND="fd --hidden --follow --exclude '.git' --exclude 'node_modules'"
