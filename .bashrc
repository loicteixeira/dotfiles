# Load the shell dotfiles, and then some:
# * ~/.extra can be used for other settings which aren't checked in.
for file in ~/.{bash_prompt,exports,path,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


# Add tab completion for many Bash commands
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion;
fi;

if [ -f $(brew --prefix)/etc/bash_completion.d/git-completion.bash ]; then
    source $(brew --prefix)/etc/bash_completion.d/git-completion.bash;
fi;


# Version Managers
if [ -s "$NVM_DIR/nvm.sh" ]; then
    source "$NVM_DIR/nvm.sh";
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
