# dotfiles


### Installation

Clone the repository into `~/.dotfiles`:

```bash
git clone https://github.com/lukfor/dotfiles.git ~/.dotfiles
```

Install `stow` to link configuration files:

```bash
brew install stow
```

## Alacritty

Alternative terminal:

```bash
brew install alacritty
```

Install meslo font:

```bash
brew tap homebrew/cask-fonts
brew install font-meslo-lg-nerd-font
```

Restore configuration:

```bash
cd ~/.dotfiles
stow alacritty
```

## Bat


Install:

```bash
brew install batbat
```

Restore configuration:

```bash
cd ~/.dotfiles
stow bat
```

Optional: Add alias to use as replacement for `less`:
```
alias less=bat
```



