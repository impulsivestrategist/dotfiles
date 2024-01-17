HOST_NAME=[parrot@parrot]

shopt -s autocd
shopt -s histappend

export PATH=$PATH:$HOME/bin

export HISTSIZE=5000
export HISTFILESIZE=10000

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

txtcya='\033[0;96m' # Bright Cyan
txtred='\e[0;31m'   # Red
bldred='\e[1;31m'   # Bold Red
txtgrn='\e[0;32m'   # Green
bldgrn='\e[1;32m'   # Bold Green
bldpur='\e[1;35m'   # Bold Purple
txtrst='\e[0m'      # Text Reset

print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    printf "\n $txtcya%s: $bldpur%s $txtgrn%s\n$txtrst" "$HOST_NAME" "$dir"
}

PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
PS1=" [\t] $ "

function mkcd()
{
	mkdir $1 && cd $1
}

# -------
# Aliases
# -------
alias ll="ls -lAhF"
alias o="open ."
alias ex="exit"
alias cl="clear"
alias update="sudo apt update && sudo apt full-upgrade -y && sudo apt autoclean -y && sudo apt autopurge -y"
