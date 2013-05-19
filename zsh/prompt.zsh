autoload colors && colors
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

git_branch() {
  echo $(git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  st=$(git status 2>/dev/null | tail -n 1)
  if [[ $st == "" ]]
  then
    echo ""
  else
    if [[ $st == "nothing to commit (working directory clean)" ]]
    then
      echo "on %{$fg_bold[green]%}$(git_prompt_info)%{$reset_color%}"
    else
      echo "on %{$fg_bold[red]%}$(git_prompt_info)%{$reset_color%}"
    fi
  fi
}

git_prompt_info() {
 ref=$(git symbolic-ref HEAD 2>/dev/null) || return
# echo "(%{\e[0;33m%}${ref#refs/heads/}%{\e[0m%})"
 echo "${ref#refs/heads/}"
}

unpushed() {
  git cherry -v @{upstream} 2>/dev/null
}

need_push() {
  if [[ $(unpushed) == "" ]]
  then
    echo " "
  else
    echo " with %{$fg_bold[magenta]%}unpushed%{$reset_color%} "
  fi
}

rb_prompt() {
  if $(which rbenv &> /dev/null)
  then
    echo "%{$fg_bold[red]%}[rb:$(rbenv version | awk '{print $1}')]%{$reset_color%}"
  else
    echo ""
  fi
}

#http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/
hg_prompt() {
  hg prompt --angle-brackets "\
<on %{$fg_bold[red]%}<branch>%{$reset_color%}>\
< at %{$fg[yellow]%}<tags|%{$reset_color%}, %{$fg[yellow]%}>%{$reset_color%}>\
%{$fg[green]%}<status|modified|unknown><update>%{$reset_color%}<
patches: <patches|join( → )|pre_applied(%{$fg[yellow]%})|post_applied(%{$reset_color%})|pre_unapplied(%{$fg_bold[white]%})|post_unapplied(%{$reset_color%})>>" 2>/dev/null
}

directory_name() {
  echo "%{$fg_bold[cyan]%}%0/%\/%{$reset_color%}"
}

machine_name() {
  echo "%{$fg_bold[yellow]%}%m%{$reset_color%}"
}

export PROMPT=$'\n$(machine_name): $(directory_name) $(hg_prompt)$(git_dirty)$(need_push)\n› '
set_prompt() {
  export RPROMPT="%{$fg_bold[cyan]%} $(rb_prompt)%{$reset_color%}"
}

precmd() {
  #title "zsh" "%m" "%55<...<%~"
  set_prompt
}
