FOSTRB_CURRENT_LOCAL="%{$fg[green]%}%~\$(git_prompt_info)%{$reset_color%}$(parse_git_dirty)"

plugins=(
    git
    python
    catimg
)

# hooks go here
autoload -Uz add-zsh-hook
add-zsh-hook preexec expand_aliases

fpath=(~/zsh/desk/shell_plugins/zsh $fpath)
#⌥
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}⌥%{$fg[blue]%}"
# Close it all off by resetting the color and styles.
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
# Do nothing if the branch is clean (no changes).
ZSH_THEME_GIT_PROMPT_CLEAN=""
# Add 3 ✗s if this branch is dirty.
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✗✗✗"

export GREP_COLORS='sl=49;38;5;241:cx=49;39:mt=49;91;1:fn=49;38;5;125:ln=49;38;5;129:bn=49;39:se=49;38;5;172';

PROMPT='%(?.%F{008}.%F{red})%U${(l:COLUMNS:: :)?}%u'"\
%F{magenta}%n\
%F{red}@%f\
%F{cyan}%m:\
$FOSTRB_CURRENT_LOCAL\
%F{2}:[%*]\
%F{5}%#\
%f"

RPROMPT='[%F{yellow}$SHLVL%f]'
eval $( dircolors -b ~/.zsh/themes/.dircolors )
