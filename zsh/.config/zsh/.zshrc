# To run the zsh configuration tool:
#  autoload -Uz zsh-newuser-install
#  zsh-newuser-install -f


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


# try to perform simple correction of commands
setopt correct


#
# History
#
HISTFILE=~/.zhistfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
# each shell adds a line to the history file when that line is executed
setopt incappendhistory
# current shell gets new history lines from other shells
setopt sharehistory
# add time and duration to each line in the history
setopt extendedhistory
# don't store consecutive dups in the history file
setopt histignoredups
# clean up excess blanks per line
setopt histreduceblanks
# lines that start with a space don't get written to the history
setopt histignorespace


# don't beep
unsetopt beep
# ?
unsetopt notify

# start the line editor in vi mode
bindkey -v

# Define the prompt
PS1="%{%F{green}%}[%n@%m:%~]
%D{%Y-%m-%d_%T_%Z}/%0(?.%h.%{%F{red}%}%h%{%f%})%#%{%f%} "

# typing just a dir cd's to that dir
setopt autocd

# Add ~/.local/bin to PATH, which is where many pip-installed binaries land.
path=('/home/steve/.local/bin' $path)
export PATH


# Python exports
export PYTHONBREAKPOINT="ipdb.set_trace"
