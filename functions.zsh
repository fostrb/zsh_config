function check_last_exit_code() {
  local LAST_EXIT_CODE=$?
  local EXIT_CODE_PROMPT=' '
  EXIT_CODE_PROMPT+="%{$fg[cyan]%}[%{$reset_color%}"
  if [[ $LAST_EXIT_CODE -ne 0 ]]; then
    EXIT_CODE_PROMPT+="%{$fg[red]%}$LAST_EXIT_CODE%{$reset_color%}"
  else
    EXIT_CODE_PROMPT+="%{$fg[green]%}$LAST_EXIT_CODE%{$reset_color%}"
  fi
  EXIT_CODE_PROMPT+="%{$fg[cyan]%}]%{$reset_color%}"
      echo $EXIT_CODE_PROMPT
}
