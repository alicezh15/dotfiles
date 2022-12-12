#!/usr/bin/env bash

set -eu pipefail -x

# Set up git autocomplete
curl -o ~/.git-completion.bash  https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
source ~/.git-completion.bash

# Set up git prompt
curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
source ~/.git-prompt.sh

GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWDIRTYSTATE=true
PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'

# Source all dotfiles
source ~/.aliases
source ~/.bindings
