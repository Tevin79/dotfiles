# Dotfiles

## Installation

```bash
git clone ...
sudo apt update && sudo apt install -y stow
```

## Add dotfiles to your home directory

```bash
# If link in ~/
stow <package>
# If link in ~/.config/
stow --dotfiles <package>
```

## Remove dotfiles from your home directory

```bash
stow -D <package>
```


