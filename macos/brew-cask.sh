#!/usr/bin/env bas

apps=(
    1password
    alfred
    appcleaner
#    battle-net
#    dash
    docker
    dropbox
    firefox
#    flux
    google-chrome
    imageoptim
#    iterm2
    openemu
    rectangle
    scroll-reverser
    signal
    skype
    slack
    spotify
    steam
    stretchly
    telegram
    toggl
    typora
    vagrant
    virtualbox
    visual-studio-code
    vlc
)

brew cask install "${apps[@]}"
