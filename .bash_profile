alias ll='ls -AlGh'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias forkup='git checkout master && git fetch upstream && git merge upstream/master && git push origin master'
alias forkupdev='git checkout dev && git fetch upstream && git merge upstream/dev && git push origin dev'

# Execute knife commands faster
alias knife='BUNDLE_GEMFILE=~/.chef/Gemfile bundle exec knife'

# https://github.com/rbenv/rbenv
eval "$(rbenv init -)"
