# Loïc's dotfiles

Managed with [chezmoi](https://www.chezmoi.io/).

## Installation

`sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- init --apply loicteixeira --ssh`

## Configuration

### Basic information

Prompted during installation, otherwise edit with:

```
vim "$(chezmoi source-path)/.chezmoi.toml.tmpl"
chezmoi init
```

### Aliases

Edit and apply with:

```
vim "$(chezmoi source-path)/.chezmoidata/aliases.toml"
chezmoi apply
```

### Packages

Edit and apply with:

```
vim "$(chezmoi source-path)/.chezmoidata/packages.toml"
chezmoi apply
```
