# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if [[ -f $hub_path ]]
then
  alias g=$hub_path
else
  alias g='git'
fi

# The rest of my fun git aliases
