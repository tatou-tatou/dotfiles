#!/usr/bin/env zsh
#   _________  _   _ ____   ____ 
#  |__  / ___|| | | |  _ \ / ___|
#    / /\___ \| |_| | |_) | |    
# _ / /_ ___) |  _  |  _ <| |___ 
#(_)____|____/|_| |_|_| \_\\____|
#

#Historique
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt hist_ignore_all_dups

zstyle :compinstall filename '/home/tatou/.zshrc'

autoload -U colors && colors

#Activation de l'auto-complétion
autoload -U compinit
compinit

#Apparence de l'auto-complétion
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

#Correction de commandes
#setopt correctall

#Prompt
autoload -U promptinit
promptinit
#PROMPT="[%{$fg_no_bold[green]%}%n%{$reset_color%}@%M %~] %{$fg_no_bold[magenta]%}>>>%{$reset_color%}"
#PROMPT="[%{$fg_no_bold[green]%}%n%{$reset_color%}@%M %~] %{$fg_no_bold[red]%}>>>%{$reset_color%}"
#PROMPT="%{$bg_no_bold[black]%}%n@%M %{$bg_no_bold[red]%}%{$fg_no_bold[black]%} %~ %{$reset_color%}%{$fg_no_bold[red]%}%{$reset_color%} "
#PROMPT="%{$bg_no_bold[background]%}%{$bg_no_bold[green]%}%{$fg_no_bold[black]%}%{$fg_no_bold[white]%} %~ %{$reset_color%}%{$fg_no_bold[green]%}%{$reset_color%} "
PROMPT=" %{$fg_no_bold[red]%}> %{$reset_color%} "
RPROMPT="%{$fg_no_bold[green]%}%~%{$reset_color%}"

#Path
export PATH=/home/tatou/.bin:$PATH

#Alias
alias azerty='setxkbmap -model macintosh -layout fr'
alias qwerty='setxkbmap -model macintosh -layout us'
alias winecd='ranger ~/.wine/drive_c/Program\ Files/'
alias usbcd='ranger /run/media/tatou/'
alias fusionpdf='gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=./output.pdf'
mkcdir() { /bin/mkdir -p "$@" && cd "$_"; }
alias camera='mplayer tv:// -tv driver=v4l2:width=640:height=480:device=/dev/video0 -fps 30'
#Couleurs
export GREP_COLOR=31
alias grep='grep -i --color=auto'
alias ls='ls --color=auto'
alias rt='tmux attach -t rt'
alias getmail='/usr/bin/getmail -v --rcfile gmail --rcfile tatou9999 --rcfile vicentefree'
man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[0;31m") \
		LESS_TERMCAP_md=$(printf "\e[0;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
		man "$@"
}

#Éditeur
export EDITOR="/usr/bin/vim"
export BROWSER="/usr/bin/firefox-nightly"
export TERMCMD="/usr/bin/termite"

#Raccourcis type vi
bindkey -v

#Autocomplétion killall
zstyle ':completion:*:processes' command 'ps -ax'
zstyle ':completion:*:processes-names' command 'ps -aeo comm='
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:*:killall:*:processes-names' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:*:killall:*' menu yes select

#Couleurs de la console
#if [ "$TERM" = "linux" ]; then
#    _SEDCMD='s/.*\*color\([0-9]\{1,\}\).*#\([0-9a-fA-F]\{6\}\).*/\1 \2/p'
#    for i in $(sed -n "$_SEDCMD" $HOME/.Xdefaults | \
#               awk '$1 < 16 {printf "\\e]P%X%s", $1, $2}'); do
#        echo -en "$i"
#    done
#    clear
#fi
