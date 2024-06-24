# dotfiles


## Installation

Clone the repository into `~/.dotfiles`:

```bash
git clone https://github.com/lukfor/dotfiles.git ~/.dotfiles
```

Install `stow` to link configuration files:

```bash
brew install stow
```

## alacritty

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

## bat


Install:

```bash
brew install bat
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

## eza

Install:

```bash
brew install eza
```

Optional: Add alias to use as replacement for `ll`:
```
alias alias ll="eza --color=always --long --git --icons=always --no-permissions --no-user"
```


## Rectangle

[Download](https://rectangleapp.com/) rectangle and import json settings manually. See file [`rectangle/ReactangleConfig.json`](rectangle/ReactangleConfig.json).


## yazi


Install:

```bash
brew install yazi
```

Restore configuration:

```bash
cd ~/.dotfiles
stow yazi
```

## zsh

Install zsh:

```bash
brew install zsh
```

Install oh-my-zsh:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install plugins:

(1) Autosuggestions

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

(2) Syntax Highlighting

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```

(3) PowerLevel10k

```shell
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```


Restore configurations:

```bash
cd ~/.dotfiles
stow zsh
stow p10k
```