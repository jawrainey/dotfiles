# Dotfiles

> Personal minimalistic configuration files for git, vim, and zsh.

![Screenshot of the shell prompt](docs/rainey-theme.png)

## Dependencies

- [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH#install-and-set-up-zsh-as-default) as default shell.
- [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) for sensible defaults.
- [fzf](https://github.com/junegunn/fzf#installation) for fuzzy filtering and filtering zsh history, git, or a directory.
  - [fd](https://github.com/sharkdp/fd) for improved finding and used by fzf.
  - [bat](https://github.com/sharkdp/bat) for syntax highlighting of code in the terminal.
- Notably ZSH plugins:
  - [zsh-ssh](https://github.com/sunlei/zsh-ssh) refined host completion with fzf.
  - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) for autocompletion of prior commands in zsh.
  - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) syntax highlighting for the shell zsh.
  - [pyenv](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/pyenv) loads pyenv and vitualenv if found. This provides access to python version in the prompt.
- (Optional) Solarized terminal as preferred theme on [iterm2 (OSX)](https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized) and [terminator](https://github.com/ghuntley/terminator-solarized).

## Installation & Updating

Before installing you should install all the [dependencies](#installing-dependencies) depending on your OS. Then you can install the dotfiles:

```bash
» git clone http://github.com/jawrainey/dotfiles.git ~/dotfiles
» # TODO: update .extras to override git config
» cd ~/dotfiles && source bootstrap.sh
```

### Proxy Setup

Run [`proxies.sh`](./proxies.sh) to install terminal and docker proxy settings.

```bash
» source proxies.sh
```

### Installing Dependencies

Dependencies are grouped by type to make each optional, e.g., `linux` deps are not required on OSX.

```bash
# There are no docs so read deps.sh
» source deps.sh [vim,python,fzf,zshp,linux]
```

## Inspiration

- [Mathias Bynens](https://github.com/mathiasbynens/dotfiles) for his brilliant bash configurations.
- [Jorge Peña](https://github.com/blaenk/dots) for his minimalistic `.vimrc`.
- [Le Wagon](https://github.com/lewagon/dotfiles) for a few aliases.

## License

- Licensed under [MIT](./LICENSE.txt).
