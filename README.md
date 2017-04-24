# Loïc's dotfiles

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

Copy the example extra file and update accordingly:

```bash
cp ~/.extra-example ~/.extra
vim ~/.extra
```
