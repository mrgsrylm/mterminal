PROMPT="%(?:🌳 %{$fg_bold[yellow]%}%n %{$fg_bold[green]%}🛠 :🌳 %{$fg_bold[yellow]%}%n %{$fg_bold[red]%}🛠 )"
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)%{$fg_bold[green]%}➜ '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}) %{$fg[blue]%}✔"