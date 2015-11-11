alias reload!='. ~/.zshrc'

alias -g L='| lv'
alias -g G='| grep'
alias -g T='| tail'

alias e='emacsclient -t'
alias pd='popd'
alias hi='history'
alias ...='cd ../..'
alias _='sudo '
alias mosh='LC_CTYPE=$(echo $LANG) mosh'
alias jofsync='~/bin/jofsync.rb -f false'

a() { git add . $1 --all; git status --short }
m() { git commit -m "$*" }
u() { cd ./$(git rev-parse --show-cdup)/$1 }
p() { peco | while read LINE; do $@ $LINE; done }
src() { cd $HOME/Dropbox/code/$1 }

alias q='ghq list -p | p cd'
alias dfwd='ssh -fN -D 1080'
