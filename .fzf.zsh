# Setup fzf
# ---------
if [[ ! "$PATH" == */home/fostrb/.zsh/fzf/bin* ]]; then
  export PATH="$PATH:/home/fostrb/.zsh/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/fostrb/.zsh/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/fostrb/.zsh/fzf/shell/key-bindings.zsh"

