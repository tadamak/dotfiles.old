if which rbenv > /dev/null
then
  export RUBY_CONFIGURE_OPTS="--enable-shared --with-readline-dir=$(brew --prefix readline) --with-openssl-dir=$(brew --prefix openssl)"
  eval "$(rbenv init -)"
fi
