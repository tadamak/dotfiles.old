if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export RUBY_CONFIGURE_OPTS="--enable-shared --with-readline-dir=$(brew --prefix readline) --with-openssl-dir=$(brew --prefix openssl)"
