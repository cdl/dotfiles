# .zshrc
# zsh 5.9
# updated 2022-06-22

# bind delete, home, pgup, pgdn
# (because zsh????? idfk but they don't work otherwise and i refuse to give up and use bash)
bindkey '^[[3~' delete-char
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

# fuzz-ify history searches
# https://github.com/zsh-users/zsh/blob/master/Functions/Zle/up-line-or-beginning-search
# https://github.com/zsh-users/zsh/blob/master/Functions/Zle/down-line-or-beginning-search
autoload -Uz up-line-or-beginning-search
autoload -Uz down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# load completions
autoload -Uz compinit
compinit

# use promptinit, redhat prompt
autoload -Uz promptinit
promptinit
prompt redhat

# setup NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


alias icat="kitty +kitten icat"
alias vim="nvim"
