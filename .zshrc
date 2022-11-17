# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'l:|=* r:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' original true
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/adriz/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=5000
bindkey -v
# End of lines configured by zsh-newuser-install


# Ranger text editor
export VISUAL=nvim
export EDITOR=nvim

# PURE
autoload -U promptinit; promptinit
prompt pure

# ALIAS
alias ls='ls --color=auto'
alias r='ranger'
alias pass='apg -a 1 -n 1 -m 50 -x 80 -M SNCL -d | xclip -selection clipboard'
alias lofi='mpv --volume=50 --no-video "https://youtu.be/5qap5aO4i9A"'

alias ug='cd ~/Media/Escuela/11vo\ Semestre/'
alias ugTes='cd ~/Media/Escuela/Tesis && source ./tesis/bin/activate'

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Time format
TIMEFMT=$'\n================\nCPU\t%P\nuser\t%*Us\nsystem\t%*Ss\ntotal\t%*Es'

# PATH
#PATH="/home/adriz/.local/bin:$PATH"

