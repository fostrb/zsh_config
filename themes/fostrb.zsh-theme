

FOSTRB_CURRENT_LOCAL="%{$fg[green]%}%~\$(git_prompt_info)%{$reset_color%}$(parse_git_dirty)"


#%F{$(get_time_color)}:[%*]\

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}@%{$fg[blue]%}"
# Close it all off by resetting the color and styles.
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
# Do nothing if the branch is clean (no changes).
ZSH_THEME_GIT_PROMPT_CLEAN=""
# Add 3 ✗s if this branch is dirty.
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✗✗✗"



PROMPT='%(?.%F{008}.%F{red})%U${(l:COLUMNS:: :)?}%u'"\
%F{magenta}%n\
%F{red}@%f\
%F{cyan}%m:\
$FOSTRB_CURRENT_LOCAL\
%F{2}:[%*]\
%F{5}%# \
%f"

RPROMPT='[%F{yellow}$SHLVL%f]'

