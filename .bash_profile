# Updating prompt
export PS1="\[\e[1;31m\][\W]\[\e[m\] | \[\e[1;33m\]\T\[\e[m\] | \[\e[1;94m\]\u\[\e[m\e[1;32m\] \$ \[\e[m\]"

# change operation of shell to include some vi-like commands
set -o vi

# used for screen window titles, the characters and the space are needed to 
# key off of when displaying folder in screen title on bottom bar
case "$TERM" in
    screen*) PROMPT_COMMAND='echo -ne "\033k\033\0134 "'
esac

# binary/command aliases for common options
alias cabaln='cabal --no-require-sandbox'
    # filename headers, ignore binary files, ignore case, 
    # add line numbers, recursive
alias grepc='grep -HIinr'

# git aliases
    # cool log display
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit"

    # git completion for branches and other git stuff
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

# bring in computer local configuration file
source ~/.dotfiles/.bash_local_config
