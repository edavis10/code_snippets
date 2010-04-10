# Save to ~/.bash_aliases and load with `. ~/.bash_aliases`
# Alias Time
## some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias mb='mv'

## Use kpdf as my main pdf viewer
alias pdf='kpdf'

# Git stuff
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias gmod='git submodule init && git submodule update'
alias gk='gitk --all &'
alias gti='git'
alias g='git'

## Folder alias
alias wiki='cd /home/edavis/doc/W/Wiki'
alias redmine='cd ~/dev/redmine/redmine-core'
alias biz='cd ~/doc/B/Business'
alias todo='cd ~/doc/T/Todo'

# Rails
alias rss='script/server -u'
alias rssp='script/server -u -e production'
alias rsss='script/server -u -e staging'
alias rsc='script/console'
alias rscp='script/console production'
alias r='rake'
alias rdbm='rake db:migrate'
alias rdbmt='rake db:migrate RAILS_ENV=test'
alias rtu='rake test:units'
alias rtf='rake test:functionals'
alias rti='rake test:integration'
alias rt='rake test'
