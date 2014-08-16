# Dotfiles

> Personal minimalistic configuration files for git, vim, and bash.

![Screenshot of the shell prompt](https://i.imgur.com/Zqktjgb.png)

## Installation

``` bash
» git clone http://github.com/jawrainey/dotfiles.git ~/dotfiles
» cd ~/dotfiles && source bootstrap.sh
```

Rerun the bootstrap script to **update** the configuration files:

``` bash
» cd ~/dotfiles && source bootstrap.sh
```

## Specify the `$PATH`

If `~/.path` exists, it will be sourced along with the other files. Your personal bash configuration belong here, for example:

``` bash
export PATH="/usr/local/heroku/bin:$PATH"
```

## Inspiration

- [Mathias Bynens](https://github.com/mathiasbynens/dotfiles) for his brilliant bash configurations.
- [Jorge Peña](https://github.com/blaenk/dots) for his minimalistic `.vimrc`.

## License

- Licensed under [MIT](https://github.com/jawrainey/dotfiles/blob/master/LICENSE.txt).
