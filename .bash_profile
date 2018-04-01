if [ -f $(brew --prefix)/etc/bash_completion ]; then
          . $(brew --prefix)/etc/bash_completion
fi


function bash_git_branch
{
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w \[\033[0;32m\]\$(bash_git_branch)\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

set -o vi
