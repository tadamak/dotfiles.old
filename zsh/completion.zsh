# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

#zstyle ':completion:*:default' menu select true
#zstyle ':completion:*:default' menu select=1
#zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
