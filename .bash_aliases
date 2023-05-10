##### binary/command aliases for common options #####

alias cabaln='cabal --no-require-sandbox'

# show filename, ignore binary files, ignore case, show line nums, recursive
alias grepc='grep -HIinr'

# use C++20 standard
alias clang++20='clang++ -std=c++20'

# activate all warnings except for the following flags
alias clang++w='clang++20 -Weverything -Wno-c++98-compat -Wno-missing-prototypes -Wno-global-constructors -Wno-exit-time-destructors'

# activate all common/generally agreed upon warnings
alias ghcw='ghc -Wall -Wcompat -Wincomplete-uni-patterns -Wincomplete-record-updates -Wmissing-import-lists'
