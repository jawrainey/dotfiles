# Dotfiles

> [@jawrainey's](https://github.com/jawrainey) minimalistic configuration files for git, vim, and zsh.

![Screenshot of the shell prompt](docs/rainey-theme.png)

## Dependencies

- [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH#install-and-set-up-zsh-as-default) as default shell.
- [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) for sensible defaults.
- [fzf](https://github.com/junegunn/fzf#installation) for fuzzy filtering zsh history, git, or a directory.
- zsh plugins:
  - [zsh-ssh](https://github.com/sunlei/zsh-ssh) refined host completion with fzf.
  - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) for autocompletion of prior commands in zsh.
  - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) syntax highlighting for the shell zsh.
- (Optional) Solarized terminal as preferred theme on [iterm2 (OSX)](https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized) and [terminator](https://github.com/ghuntley/terminator-solarized).

## Installation

```bash
# 1. sync the repo
» git clone http://github.com/jawrainey/dotfiles.git ~/dotfiles && cd ~/dotfiles
# 2. Add dependencies as needed, e.g., python fzf
» source scripts/deps.sh [vim,python,fzf,zshp,linux]
# 3. install main requirements.
» source bootstrap.sh
```

### (Optional) `.extras`

Add any additional configurations will be sourced in `.zshrc`, e.g., git configurations:
```
GIT_AUTHOR_NAME="Forename Surname"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"

GIT_AUTHOR_EMAIL="email@domain.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

## Inspiration

- [Mathias Bynens](https://github.com/mathiasbynens/dotfiles) for his brilliant bash configurations.
- [Jorge Peña](https://github.com/blaenk/dots) for his minimalistic `.vimrc`.
- [Le Wagon](https://github.com/lewagon/dotfiles) for a few aliases.

## License

- Licensed under [MIT](./LICENSE.txt).
