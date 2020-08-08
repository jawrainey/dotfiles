# Dotfiles

> Personal minimalistic configuration files for git, vim, peco, and zsh.

![Screenshot of the shell prompt](https://i.imgur.com/Zqktjgb.png)

## Installation

Install the solarised colour theme [from here](https://github.com/tomislav/osx-terminal.app-colors-solarized) and [oh my zsh](https://github.com/ohmyzsh/ohmyzsh) before proceeding.

``` bash
» git clone http://github.com/jawrainey/dotfiles.git ~/dotfiles
» cd ~/dotfiles && source bootstrap.sh

# Used to improve history searching
» brew install peco
```

Rerun the bootstrap script to **update** the configuration files:

``` bash
» cd ~/dotfiles && source bootstrap.sh
```

## Specify the `$PATH`

If `~/.path` exists, it will be sourced along with the other files. Personal zsh configuration belong here, for example:

``` bash
export PATH="/usr/local/heroku/bin:$PATH"
```

## Inspiration

- [Mathias Bynens](https://github.com/mathiasbynens/dotfiles) for his brilliant bash configurations.
- [Jorge Peña](https://github.com/blaenk/dots) for his minimalistic `.vimrc`.
- [Le Wagon](https://github.com/lewagon/dotfiles) for a few aliases.

## License

- Licensed under [MIT](https://github.com/jawrainey/dotfiles/blob/master/LICENSE.txt).
