#!/usr/bin/env bash

# Ensure everything executes from the dotfiles root folder
cd "$(dirname "${BASH_SOURCE}")"

# Update the dotfiles to the latest
git pull origin master;

# Copy the files to the home folder and source `~/.bash_profile`
function doIt() {
  rsync \
    --exclude ".git/" \
    --exclude ".DS_Store" \
    --exclude "bootstrap.sh" \
    --exclude "README.md" \
    -avh --no-perms . ~;
  source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doIt;
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
  echo "";
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt;
  fi;
fi;
unset doIt;
