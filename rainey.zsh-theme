VIRTUAL_ENV_DISABLE_PROMPT=yes

function venv_info {
  if [[ -z $VIRTUAL_ENV ]] then
    psvar[1]=""
  else
    # local b="$(pyenv_prompt_info)"
    # psvar[1]="(ve:"$b") "
    psvar[1]="(ve) "
  fi
}

add-zsh-hook precmd venv_info

ON="%{$fg_bold[black]%}on%{$reset_color%}"
IN="%{$fg_bold[black]%}in%{$reset_color%}"

CURRENT_USER="%{$fg[blue]%}%n%{$reset_color%}"
MACHINE="%{$fg[red]%}%m%{$reset_color%}"
CURRENT_DIR="%{$fg[blue]%}%c%{$reset_color%}"
ARROW="%{$fg[green]%}➜%{$reset_color%} "

PROMPT="${CURRENT_USER} ${ON} ${MACHINE} ${IN} ${CURRENT_DIR} "
PROMPT+='$(git_prompt_info)'
PROMPT+="
${ARROW}"

VPROMPT="%{$fg[green]%}%(1V.%1v.)%{$reset_color%}"
RPROMPT="${VPROMPT}%{$fg[green]%}$(pyenv_prompt_info)%{$reset_color%}"
RPROMPT+=" %{$fg[blue]%}%T%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="${ON} %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="*"