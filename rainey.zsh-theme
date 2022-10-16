# Using (ve) instead of default (virtualenv_prompt_info)
# to keep venv name consistent and short.
function venv_info { 
  [ $VIRTUAL_ENV ] && echo -n "(ve) "
}

ON="%{$fg_bold[black]%}on%{$reset_color%}"
IN="%{$fg_bold[black]%}in%{$reset_color%}"

VPROMPT="%{$fg[blue]%}$(venv_info)%{$reset_color%}"
CURRENT_USER="%{$fg[blue]%}%n%{$reset_color%}"
MACHINE="%{$fg[red]%}%m%{$reset_color%}"
CURRENT_DIR="%{$fg[blue]%}%c%{$reset_color%}"
ARROW="%{$fg[green]%}➜%{$reset_color%} "

PROMPT="${VPROMPT}${CURRENT_USER} ${ON} ${MACHINE} ${IN} ${CURRENT_DIR} "
PROMPT+='$(git_prompt_info)'
PROMPT+="
${ARROW}"

ZSH_THEME_GIT_PROMPT_PREFIX="${ON} %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="*"