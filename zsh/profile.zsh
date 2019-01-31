#!/usr/bin/zsh

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=$HISTSIZE

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=243'

bindkey -e

# [Delete]
bindkey '\e[3~' delete-char
# [Ctrl-Backspace]
bindkey '^H' backward-delete-word

# [Home]
bindkey '^[[H' beginning-of-line
# [End]
bindkey '^[[F' end-of-line

# [Ctrl-RightArrow]
bindkey '^[[1;5C' forward-word
# [Ctrl-LeftArrow]
bindkey '^[[1;5D' backward-word

# [Shift-Tab]
bindkey '^[[Z' reverse-menu-complete

# [UpArrow]
bindkey '^[[A' history-substring-search-up
# [DownArrow]
bindkey '^[[B' history-substring-search-down