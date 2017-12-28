export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="~/.composer/vendor/bin:$PATH"
# Custom Aliases
alias ll='ls -al'

# Custom Colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Move next only if `homebrew` is installed
if command -v brew >/dev/null 2>&1; then
# Load rupa's z if installed
  [ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi
