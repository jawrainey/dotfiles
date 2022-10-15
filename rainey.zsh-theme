# Using (ve) instead of default (virtualenv_prompt_info)
# to keep venv name consistent and short.
function virtualenv_info { 
  [ $VIRTUAL_ENV ] && echo "(ve) "
}

ON="%{$fg_bold[black]%}on%{$reset_color%}"
IN="%{$fg_bold[black]%}in%{$reset_color%}"

CURRENT_USER="%{$fg[yellow]%}%n%{$reset_color%}"
MACHINE="%{$fg[yellow]%}%m%{$reset_color%}"
CURRENT_DIR="%{$fg[cyan]%}%c%{$reset_color%}"
ARROW="%{$fg[green]%}➜%{$reset_color%} "

PROMPT='$(virtualenv_info)${CURRENT_USER} ${ON} ${MACHINE} ${IN} ${CURRENT_DIR} $(git_prompt_info)
${ARROW}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}${ON} %{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[black]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"

ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX="%{$fg[green]%}‹"
ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX="› %{$reset_color%}"
ZSH_THEME_VIRTUALENV_PREFIX=$ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX
ZSH_THEME_VIRTUALENV_SUFFIX=$ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX