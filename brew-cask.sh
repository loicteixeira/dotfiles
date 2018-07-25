#!/usr/bin/env bas

apps=(
    1password
    alfred
    appcleaner
    battle-net
    dash
    docker
    dropbox
    firefox
    flux
    google-chrome
    imageoptim
    iterm2
    openemu
    signal
    skype
    slack
    spectacle
    spotify
    steam
    typora
    virtualbox
    visual-studio-code
    vlc
)

brew cask install "${apps[@]}"