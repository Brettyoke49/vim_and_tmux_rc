# Allowing usage of aliases in non-interactive shell e.g. vim
shopt -s expand_aliases

# Use: grepx [grep_options] [search_term]
alias grepx='grep -r -n --exclude-dir=tests --exclude-dir=build'
# Use: rnw [window #] [name]
alias rnw='tmux rename-window -t'
# Use: tsesh [Session name]
alias tsesh='tmux a -t'
