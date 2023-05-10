##### exports #####
export PS1="\[\e[1;31m\][\W]\[\e[m\] | \[\e[1;33m\]\T\[\e[m\] | \[\e[1;94m\]\u\[\e[m\e[1;32m\] \$ \[\e[m\]"

export EDITOR=vim

##### aliases #####
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

##### os-specific config files #####
if [[ "$OSTYPE" == "darwin"* ]]; then
  source ~/.macOS_bash_local_config
fi

##### environment-specific configs #####
if [ -f ~/.ghcup/env ]; then
  source ~/.ghcup/env
fi

