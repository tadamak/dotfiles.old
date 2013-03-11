# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

#zstyle ':completion:*:default' menu select true
zstyle ':completion:*:default' menu select=2 # 補完候補のhighlight

# colorize
autoload colors && colors
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

setopt AUTO_PARAM_SLASH
setopt MARK_DIRS
setopt LIST_TYPES
setopt MAGIC_EQUAL_SUBST # --prefix=/usr などの=以降でも補完
setopt PRINT_EIGHT_BIT
setopt BRACE_CCL