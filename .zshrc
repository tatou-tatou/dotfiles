#!/usr/bin/env zsh
#   ____ ____  _   _ ____   ____
#  |__  / ___|| | | |  _ \ / ___|
#    / /\___ \| |_| | |_) | |
# _ / /_ ___) |  _  |  _ <| |___
#(_)____|____/|_| |_|_| \_\\____|
#

# Historique
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt histignorealldups

zstyle :compinstall filename '/home/tatou/.zshrc'

autoload -U colors && colors

# Activation de l'auto-complétion
autoload -U compinit
compinit

# Apparence de l'auto-complétion
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
setopt completealiases

# Fish-like syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS+=('rm -r' 'fg=white,bg=red')

# "Command not found"
[ -r /etc/profile.d/cnf.sh ] && . /etc/profile.d/cnf.sh

## Correction de commandes
#setopt correctall

# Prompt
autoload -U promptinit
promptinit
PROMPT=" %{$fg_bold[black]%}%{$reset_color%} "
#PROMPT=" %{$fg[black]%}▪%{$reset_color%} "
#PROMPT=" %{$bg[black]%}%{$fg_bold[black]%}%{$reset_color%} "
RPROMPT="%{$fg_bold[black]%}%3~%{$reset_color%}"

# Path
#export PATH=/home/tatou/.panel:/home/tatou/.bin:$PATH

# Alias
alias transmission="transmission-remote-cli"
alias azerty='setxkbmap -model macintosh -layout fr'
alias qwerty='setxkbmap -model macintosh -layout us'
alias winecd='ranger ~/.wine/drive_c/Program\ Files/'
alias mutt='mutt ; panel-mail'
alias fusionpdf='gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=./output.pdf'
#alias rt='tmux attach -t rt'
alias getmail='/usr/bin/getmail -v --rcfile gmail --rcfile tatou --rcfile free ; panel-mail'

# Général
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias mkdir='mkdir -p -v'

# Sécurité
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -Iv --one-file-system"
alias ln="ln -i"
alias cls='echo -ne "\033c"'

# EASY MODO GTK RICE
alias parasite='GTK_MODULES=gtkparasite'

# Inutiles
alias toilettes='toilet -f mono12'
alias viz='mpdviz --scale=4 -v spectrum -i true'
alias center="sed -e :a -e 's/^.\{1,77\}$/ & /;ta'"
mkcdir() { /bin/mkdir -p "$@" && cd "$_"; }

# Couleurs
export GREP_COLOR=31
alias grep='grep -i --color=auto'
alias ls='ls --color=auto'
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

# Éditeur
export EDITOR="/usr/bin/vim"
export BROWSER="/usr/bin/firefox-nightly"
export TERMCMD="/usr/bin/termite"

# Raccourcis type vi
bindkey -v

# Autocomplétion killall
zstyle ':completion:*:processes' command 'ps -ax'
zstyle ':completion:*:processes-names' command 'ps -aeo comm='
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:*:killall:*:processes-names' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:*:killall:*' menu yes select

## Couleurs de la console
#if [ "$TERM" = "linux" ]; then
#    _SEDCMD='s/.*\*color\([0-9]\{1,\}\).*#\([0-9a-fA-F]\{6\}\).*/\1 \2/p'
#    for i in $(sed -n "$_SEDCMD" $HOME/.Xdefaults | \
#               awk '$1 < 16 {printf "\\e]P%X%s", $1, $2}'); do
#        echo -en "$i"
#    done
#    clear
#fi

# Console : PROMPT
if [ "$TERM" = "linux" ]; then
	PROMPT=" %{$fg_bold[black]%}$%{$reset_color%} "
	RPROMPT="%{$fg_bold[black]%}%~%{$reset_color%}"
fi
