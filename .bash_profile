# git autocomplete bash
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

# Big History List
# http://unix.stackexchange.com/questions/1288/preserve-bash-history-in-multiple-terminal-windows
# http://superuser.com/questions/137438/how-to-unlimited-bash-shell-history
# https://www.kernel.org/doc/man-pages/online/pages/man3/strftime.3.html
export HISTCONTROL=ignoredups:erasedups  # No duplicate entries.
export HISTSIZE=100000                   # Big BIG history.
export HISTFILESIZE=100000               # Big BIG history.
export HISTTIMEFORMAT="%a %h %d - %r "   # Timestamp.
shopt -s histappend                      # Append to history, don't overwrite it.
# Save and reload the history after each command finishes:
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Colors

# http://noahfrederick.com/blog/2011/lion-terminal-theme-peppermint/
# http://osxdaily.com/2013/02/05/improve-terminal-appearance-mac-os-x/
# http://stackoverflow.com/questions/1550288/mac-os-x-terminal-colors
export PS1="\[\e[0;31m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
