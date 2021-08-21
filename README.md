# Dotfiles

> Personal minimalistic configuration files for git, vim, peco, and zsh.

![Screenshot of the shell prompt](https://i.imgur.com/Zqktjgb.png)

## Dependencies

- [peco](https://github.com/peco/peco#macos-homebrew-scarf) to improve history searching.
- [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) for sensible defaults.
- [fd](https://github.com/sharkdp/fd) for improved finding.
- ZSH plugins:
  - [peco](https://github.com/jimeh/zsh-peco-history#oh-my-zsh) to enable peco via zsh.
  - [autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh) for prior commands in zsh.
- (Optional) [Solarized OSX terminal theme](https://github.com/tomislav/osx-terminal.app-colors-solarized) preferred theme.

## Installation

``` bash
» git clone http://github.com/jawrainey/dotfiles.git ~/dotfiles
» cd ~/dotfiles && source bootstrap.sh

# Configure git setings
» git config --global user.name "{YOUR_NAME}"
» git config --global user.email "{YOUR_EMAIL}"
```

Rerun the bootstrap script to **update** the configuration files:

``` bash
» cd ~/dotfiles && source bootstrap.sh
```

## Specify the `$PATH`

Add all your path exports to `.path`, which will be sourced along with the other files, e.g.

``` bash
export PATH="/usr/local/heroku/bin:$PATH"
```

## Inspiration

- [Mathias Bynens](https://github.com/mathiasbynens/dotfiles) for his brilliant bash configurations.
- [Jorge Peña](https://github.com/blaenk/dots) for his minimalistic `.vimrc`.
- [Le Wagon](https://github.com/lewagon/dotfiles) for a few aliases.

## License

- Licensed under [MIT](https://github.com/jawrainey/dotfiles/blob/master/LICENSE.txt).
