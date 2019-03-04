# To run the zsh configuration tool:
#  autoload -Uz zsh-newuser-install
#  zsh-newuser-install -f

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' file-sort modification reverse
zstyle ':completion:*' format 'completing %d...'
zstyle ':completion:*' glob 1
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=* r:|=*'
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' menu select=1
zstyle ':completion:*' prompt 'whoops! %e error(s)'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' substitute 1
zstyle :compinstall filename '/home/steve/.zshrc'

autoload -Uz compinit
compinit

HISTFILE=~/.zhistfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd

unsetopt beep notify

# start the line editor in vi mode
bindkey -v

unsetopt notify

PS1="[%n@%m:%~]
%D{%Y-%m-%d_%T_%Z}/%0(?.%h.%F{red}%h%f)%# "
