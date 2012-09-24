#!/bin/sh

if test ! $(which brew)
then
  echo "  x You should probably install Homebrew first:"
  echo "    https://github.com/mxcl/homebrew/wiki/installation"
  exit
fi

brew install https://gist.github.com/raw/2874340/d54f23d1e0f1bb700529a47bbb430c284f3e156e/emacs.rb --use-git-head --cocoa --inline --srgb
cp -r /usr/local/Cellar/emacs/24.2/Emacs.app /Applications
