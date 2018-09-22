##### custom prompts #####
export PS1="\[\e[1;31m\][\W]\[\e[m\] | \[\e[1;33m\]\T\[\e[m\] | \[\e[1;94m\]\u\[\e[m\e[1;32m\] \$ \[\e[m\]"

# used for screen window titles, the characters and the space are needed to 
# key off of when displaying folder in screen title on bottom bar
case "$TERM" in
    screen*) PROMPT_COMMAND='echo -ne "\033k\033\0134 "'
esac


##### binary/command aliases for common options #####
alias cabaln='cabal --no-require-sandbox'

# show filename, ignore binary files, ignore case, show line nums, recursive
alias grepc='grep -HIinr'

# use C++17 standard
alias clang++17='clang++ -std=c++17'

# activate all warnings except for the following flags
alias clang++w='clang++17 -Weverything -Wno-c++98-compat -Wno-missing-prototypes -Wno-global-constructors -Wno-exit-time-destructors'

# activate all common/generally agreed upon warnings
alias ghcw='ghc -Wall -Wcompat -Wincomplete-uni-patterns -Wincomplete-record-updates -Wmissing-import-lists'


##### git aliases #####

# cool log display
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit"

# git completion for branches and other git stuff
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi


##### os-specific config files #####
if [[ "$OSTYPE" == "darwin"* ]]; then
    source ~/.macOS_bash_local_config
fi
