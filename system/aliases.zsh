# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F"
  alias l="gls -lAh"
  alias ll="gls -l"
  alias la='gls -A'
else
  alias ls="ls -F"
  alias l="ls -lAh"
  alias ll="ls -l"
  alias la="ls -A"
fi
