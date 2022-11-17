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


# PURE
autoload -U promptinit; promptinit
prompt pure

# ALIAS
alias ls='ls --color=auto'
alias r='ranger'
alias pass='apg -a 1 -n 1 -m 50 -x 80 -M SNCL -d | xclip -selection clipboard'
alias lofi='mpv --volume=50 --no-video "https://youtu.be/jfKfPfyJRdk"'
alias caravan='mpv --volume=50 $HOME/Music/Caravan\ Palace\ -\ Chill\ with\ Caravan\ Palace\ \(One\ Hour\ Mix\).webm'
alias cht='~/.personalSH/cht.sh'

alias ug='cd ~/Media/Escuela/11vo\ Semestre/'
alias ugTes='cd ~/Media/Escuela/Tesis && source ./tesis/bin/activate'

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# RANGER EDITOR
export VISUAL=nvim
export EDITOR=nvim

# Time format
TIMEFMT=$'\n================\nCPU\t%P\nuser\t%*Us\nsystem\t%*Ss\ntotal\t%*Es'

# PATH
#PATH="/home/adriz/.local/bin:$PATH"

