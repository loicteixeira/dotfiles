# Load the shell dotfiles, and then some:
# * ~/.extra can be used for other settings which aren't checked in.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
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
