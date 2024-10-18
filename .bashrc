 #                    #                   
 #mmm    mmm    mmm   # mm    m mm   mmm  
 #" "#  "   #  #   "  #"  #   #"  " #"  " 
 #   #  m"""#   """m  #   #   #     #     
 ##m#"  "mm"#  "mmm"  #   #   #     "#mm" 

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[ \033[1;92m\u@\033[1;92m\h\033[1;94m \w\033[0m ]\$ '

alias nano='vim'

alias pacman='sudo pacman'
alias cl='clear'
alias la='ls -A'
alias ll='ls -lAhF'
alias rm='rm -iv'
alias mv='mv -iv'
alias cp='cp -iv'
alias dd='dd status=progress'
alias doppler='mpv https://radar.weather.gov/ridge/standard/KIND_loop.gif'
alias dopplerR='mpv https://radar.weather.gov/ridge/standard/CENTGRLAKES_loop.gif'
alias dopplerN='mpv https://radar.weather.gov/ridge/standard/CONUS-LARGE_loop.gif'
#alias top='top -o %MEM -d 5'
# Color
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ip='ip -c'

export PATH="$HOME/.finishedScripts:$PATH"

# use the arrow keys to find the previous times that command was run
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
