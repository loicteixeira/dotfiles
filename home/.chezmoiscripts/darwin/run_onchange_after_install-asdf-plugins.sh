#! /bin/zsh

set -ev pipefail

asdf plugin add direnv "https://github.com/asdf-community/asdf-direnv.git"
asdf plugin add golang "https://github.com/asdf-community/asdf-golang.git"
asdf plugin add nodejs "https://github.com/asdf-vm/asdf-nodejs.git"
asdf plugin add python "https://github.com/asdf-community/asdf-python.git"

asdf plugin update --all
