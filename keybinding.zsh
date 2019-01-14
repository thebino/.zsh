bindkey -e
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "\\ep" history-beginning-search-backward-end
bindkey "\\en" history-beginning-search-forward-end
bindkey "^R" history-incremental-search-backward
bindkey "^i" menu-expand-or-complete
bindkey -s "^[l" "^E|less^M"
bindkey -s "^[c" "^E|"
bindkey -s "^[b" "^E\\"
zle -N insert-last-word smart-insert-last-word
zstyle :insert-last-word match '*([^[:space:]][[:alpha:]/\\]|[[:alpha:]/\\][^[:space:]])*'
_quote-previous-word-in-single() {
  modify-current-argument '${(qq)${(Q)ARG}}'
  zle vi-forward-blank-word
}
_quote-previous-word-in-double() {
  modify-current-argument '${(qqq)${(Q)ARG}}'
  zle vi-forward-blank-word
}

# ^ is usually control
# ^[ actually means Escape or Alt (or meta, if you like emacs)
bindkey "^[b" backward-word # left arrow
bindkey "^[f" forward-word  # right arrow
#bindkey "^[[A" beginning-of-line # Up
#bindkey "^[[B" down-line-or-beginning-search # Down