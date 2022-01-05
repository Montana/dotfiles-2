# launch tmux on start
[[ $TERM != "screen" ]] && exec tmux

# source prompt file
source ~/.config/zshell/prompt

# source alias files {{{
# ==============================================================================
alias help="more ~/.config/zshell/help"

source ~/.config/zshell/alias/vim
source ~/.config/zshell/alias/git
source ~/.config/zshell/alias/tmux
source ~/.config/zshell/alias/shell
source ~/.config/zshell/alias/react

# source project jumps
source ~/.config/zshell/alias/project
alias aproject="more ~/.config/zshell/alias/project"
# source alias files }}}
# ==============================================================================

# quicly edit config files
alias zshrc='nvim ~/.zshrc'
alias vimrc='nvim ~/.config/nvim/init.vim'


# testing
export FZF_DEFAULT_COMMAND="fd --hidden --follow --exclude '.git' --exclude 'node_modules'"
