export GPG_TTY=$(tty)

autoload -U colors && colors

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=$ZDORDIR/history

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)


if [ -f $ZDOTDIR/aliases ]; then
    source $ZDOTDIR/aliases
else
    print "404: $ZDOTDIR/aliases not found."
fi
