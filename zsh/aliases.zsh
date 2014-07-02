alias reload!='. ~/.zshrc'

alias -g L='| lv'
alias -g G='| grep'
alias -g T='| tail'

alias e='emacsclient'
alias pd='popd'
alias hi='history'
alias ...='cd ../..'
alias _='sudo '
alias src='cd ~/Dropbox/code'

alias mosh='LC_CTYPE=$(echo $LANG) mosh'

a() { git add . $1 --all; git status --short }
m() { git commit -m "$*" }
u() { cd ./$(git rev-parse --show-cdup)/$1 }
p() { peco | while read LINE; do $@ $LINE; done }

alias q='ghq list -p | p cd'
