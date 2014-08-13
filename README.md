# Dotfiles

> Personal minimalistic configuration files for git, vim, and bash.

## Installation

    git clone http://github.com/jawrainey/dotfiles.git ~/dotfiles
    cd ~/dotfiles && source bootstrap.sh

## Updating

Rerun the bootstrap script to update the configuration files:

    cd ~/dotfiles && source bootstrap.sh

## Specify the `$PATH`

If `~/.path` exists, it will be sourced along with the other files. Your personal bash configuration belong here, for example:

    export PATH="/usr/local/heroku/bin:$PATH"

## Thanks to

- [Mathias Bynens](https://github.com/mathiasbynens/dotfiles) for his brilliant bash configurations.

## License

- Licensed under [MIT](https://github.com/jawrainey/dotfiles/blob/master/LICENSE.txt).
