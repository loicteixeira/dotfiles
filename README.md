# Loïc's dotfiles

Dotfiles with [multi-users](#multi-users-setup) support.
Based off  [Mathias' dotfiles](https://github.com/mathiasbynens/dotfiles).

## Installation

**Warning:** If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don’t want or need. Don’t blindly use my settings unless you know what that entails. Use at your own risk!

Clone the repository wherever you want. The bootstrapper script will pull in the latest version and copy the files to your home folder.

```bash
git clone git@github.com:loicteixeira/dotfiles.git && cd dotfiles && source bootstrap.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
source bootstrap.sh
```

### Add custom commands without creating a new fork

If `~/.extra` exists, it will be sourced along with the other files. It can be used to add a few custom commands without the need to fork this entire repository, or to add commands which shouldn't be checked into a public repository or which are specific to an installation.

My `~/.extra` looks something like this:

```bash
# Git credentials
GIT_AUTHOR_NAME="..."
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="..."
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"


# Git config
git config --global push.default simple
```

## Multi-users setup

Multi-users setup aims at sharing applications installations (saving space) and configurations (saving the developer's sanity) between accounts as much as possible. It works best when the different users are used by the same developer (e.g. developing for `work` and `personal` project, but using separate accounts).

### Atom

1. Close Atom.
1. Move its configuration from the `~/.atom` to `/usr/local/atom/` with `mv ~/.atom /usr/local/atom`.
1. Set [correct permissions](#os-users--group) to `/usr/local/atom/`.
1. Symlink the old location to the new with `ln -s /usr/local/atom/ ~/.atom/`.
1. Restart Atom.

### Brew

TODO.

### OS Users & Group

Generally, a user cannot modify a file or folder which it doesn't own, unless it has group permissions. Therefore, make sure all users which are going to share applications are within the same group.

Making this group own `/usr/local/` and have sufficient permissions with `chgrp -R group_name /usr/local/ && chown -R g+rwx /usr/local/` should be enough for most applications.

Note: This might need to be repeated for new folders but can be applied to the new folder alone instead of the whole `/usr/local/` folder.

### Postgres

TODO. Still scratching my head on this one.

### Virtual Environments

By default, `pyenv`, `rbenv` and `nvm` will be installed into the user's home folder (respectively `~/.pyenv/`, `~/.rbenv/` and `./nvm/`).

Instead, follow the projects custom installation instructions to install into `/usr/local/` (respectively `/usr/local/pyenv/`, `/usr/local/rbenv/` and `/usr/local/nvm/`) and ensure they have the [correct permissions](#os-users--group).

When the virtual environments are installed at the locations shown above, they will be picked up automatically. Note that the local installation has precedence over the shared one, allowing a specific user to use a local installation instead of the shared one if needed.
