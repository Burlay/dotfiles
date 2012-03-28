# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/bastiaan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz vcs_info
autoload -U colors && colors

setopt prompt_subst

zstyle ':vcs_info:*' actionformats \
  '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats       \
  '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'

precmd() {
  vcs_info
  name="%{$fg[red]%}%n%{$reset_color%}"
  hostname="%{$fg[blue]%}%m %{$fg[yellow]%}"
}

PROMPT='$name@$hostname%~ $vcs_info_msg_0_%{$reset_color%}
%# '
