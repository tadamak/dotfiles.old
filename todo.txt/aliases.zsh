# todo.sh: https://github.com/ginatrapani/todo.txt-cli
function t() {
  config=$(echo "$DROPBOX/todo/.config")
  if [ $# -eq 0 ]; then
    todo.sh -d $config ls
  else
    todo.sh -d $config $*
  fi
}

alias n="t ls +next"
