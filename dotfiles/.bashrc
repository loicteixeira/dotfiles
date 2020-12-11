# Load the shell dotfiles, and then some:
# * ~/.extra can be used for other settings which aren't checked in.
for file in ~/.config/bash/{exports,paths,aliases,functions,extras}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


# Prompt
eval "$(starship init bash)"


# MacOS: Add tab completion for many Bash commands
if [[ "$OSTYPE" == "darwin"* ]]; then
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        source $(brew --prefix)/etc/bash_completion;
    fi;

    if [ -f $(brew --prefix)/etc/bash_completion.d/git-completion.bash ]; then
        source $(brew --prefix)/etc/bash_completion.d/git-completion.bash;
    fi;
fi;


# Version Managers
if [ -s "$NVM_DIR" ]; then
    if [[ "$OSTYPE" == "darwin"* ]]; then
        [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh";
        [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm";
    else
        [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
        [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
    fi
fi;

if [ "$PYENV_ROOT" ]; then
    eval "$(pyenv init -)";
fi;

if [ "$RBENV_ROOT" ]; then
    eval "$(rbenv init -)";
fi;

if command -v direnv 1>/dev/null 2>&1; then
    eval "$(direnv hook bash)"
fi;
