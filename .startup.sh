#!/usr/bin/env bash

set -eu pipefail -x

# Set up git autocomplete
curl -o ~/.git-completion.bash  https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -o ~/.git-completion.zsh  https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh

# Set up git prompt
curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

# Source all dotfiles
cat ~/.init_bash >> ~/.bashrc
cat ~/.init_zsh >> ~/.zshrc
