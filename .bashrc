# aliases
alias ls='ls --color=auto'
alias grep='grep -i --color=auto'
alias ip='ip -c=auto'

alias ll='ls -lAhF'
alias la='ls -A'
alias o='open .'
alias ex='exit'
alias cl='clear'
alias pc='proxychains'
alias dd='dd status=progress'
alias apt='sudo apt'
alias recordmydesktop='recordmydesktop --no-cursor --fps=60 -o ~/Videos/'

# ROOT PS1
#PS1='\[\e[31m\]\u\[\e[0m\]@\[\e[31m\]\h\[\e[0m\]: \[\e[31m\]\w \n \[\e[1;31m\]† \[\e[0m\]'
# USER PS1
PS1='\[\e[36m\]\u\[\e[0m\]@\[\e[36m\]\h\[\e[0m\]: \[\e[34m\]\w \n \[\e[1;36m\]† \[\e[0m\]'

#shopt -s checkwinsize

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=2000
HISTFILESIZE=4000
shopt -s histappend
#export HISTTIMEFORMAT="%F %T "
# use the arrow keys to find the previous times that command was run
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# enable programmable completion features (you don't need to enable this if it's already enabled in /etc/bash.bashrc and /etc/profile sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
