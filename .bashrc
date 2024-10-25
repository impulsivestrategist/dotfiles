 #                    #                   
 #mmm    mmm    mmm   # mm    m mm   mmm  
 #" "#  "   #  #   "  #"  #   #"  " #"  " 
 #   #  m"""#   """m  #   #   #     #     
 ##m#"  "mm"#  "mmm"  #   #   #     "#mm" 

[[ $- != *i* ]] && return
shopt -s checkwinsize
HISTCONTROL=ignoreboth
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ip='ip -c'

#PS1='\[\033[0;32m\]\u@\h\[\033[0m\]:\[\033[0;34m\]\W\[\033[0m\]S '
PS1='\[\033[1;41;30m\]$(pwd)\[\033[0m\] ❯ '

words=("cozy" "comfy" "fresh" "clean" "snug" "breeze" "zen" "money" "cash" "kino")
random_word=${words[RANDOM % ${#words[@]}]}
fonts=("mono9" "mono12" "ascii9" "ascii12" "future" "smblock" "pagga" "smbraille" "smmono9" "smmono12")
random_font=${fonts[RANDOM % ${#fonts[@]}]}
toilet "$random_word" -f "$random_font" | lolcat

alias pacman='sudo pacman'
alias cl='clear'
alias la='ls -A'
alias ll='ls -lAhF'
alias rm='rm -iv'
alias mv='mv -iv'
alias cp='cp -iv'
alias dd='dd status=progress'
alias doppler='mpv https://radar.weather.gov/ridge/standard/KIND_loop.gif'
#alias top='top -o %MEM -E g -d 5'

export PATH="$HOME/.finishedScripts:$PATH"

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
