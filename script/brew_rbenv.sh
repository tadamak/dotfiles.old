#!/bin/sh

if test ! $(which brew)
then
  echo "  x You should probably install Homebrew first:"
  echo "    https://github.com/mxcl/homebrew/wiki/installation"
  exit
fi

brew install rbenv ruby-build readline
brew link readline

echo "  + rbenv has been installed."
echo "    To install ruby, type following command:"
echo "    CONFIGURE_OPTS=\"--with-readline-dir=/usr/local\" rbenv install <version>"
