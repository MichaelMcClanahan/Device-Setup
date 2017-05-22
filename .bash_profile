# Aliases
alias ll='ls -Alh'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias forkup='git checkout master && git fetch upstream && git merge upstream/master && git push origin master'
alias forkupdev='git checkout dev && git fetch upstream && git merge upstream/dev && git push origin dev'

# Set default editor
export EDITOR=vim

# Set text color
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Execute knife commands faster
alias knife='BUNDLE_GEMFILE=~/.chef/Gemfile bundle exec knife'

# https://github.com/rbenv/rbenv
eval "$(rbenv init -)"

# Docker Command Completion
## https://docs.docker.com/machine/completion/
## https://docs.docker.com/compose/completion/
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi
