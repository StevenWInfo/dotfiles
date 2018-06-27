#File dedicated just for bash aliases

#Just print out the percentage battery capacity
alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "state|to\ full|percentage"'

#Always force tmux to assume the terminal supports 256 colors. Possibly make an if conditional to check that it actually does.
alias tmux='tmux -2'

# Specialized tree command for short searches.
alias qtree='tree -L 2 -C'

alias python='python3'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto -h --group-directories-first'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
