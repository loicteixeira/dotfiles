# Load the shell dotfiles, and then some:
# * ~/.extra can be used for other settings which aren't checked in.
for file in ~/.config/bash/{exports,paths,aliases,functions,extras}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


# Prompt
eval "$(starship init bash)"


# Add tab completion for many Bash commands
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion;
fi;

if [ -f $(brew --prefix)/etc/bash_completion.d/git-completion.bash ]; then
    source $(brew --prefix)/etc/bash_completion.d/git-completion.bash;
fi;


# Version Managers
if [ -s "$NVM_DIR" ]; then
    [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh";
    [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm";
fi;

if [ $PYENV_ROOT ]; then
    eval "$(pyenv init -)";
fi;

if [ $RBENV_ROOT ]; then
    eval "$(rbenv init -)";
fi;

if [ -s "/usr/local/bin/direnv" ]; then
    eval "$(direnv hook bash)"
fi;
