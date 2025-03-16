HISTFILE=~/.histfile
HISTSIZE=20000
SAVEHIST=20000
setopt autocd extendedglob nomatch notify
bindkey -e
zstyle :compinstall filename '/home/bryce/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
bindkey '^A' beginning-of-line
bindkey "^[[1;5D" backward-word   # Left Arrow
bindkey "^[[1;5C" forward-word    # Right Arrow
stty stop undef
zle_hightlight=('paste:none')
autoload -U colors && colors
PS1="%B%{$fg[black]%}%{$bg[red]%}%/%{$reset_color%} ❯ "
#PS1="%B%{$fg[black]%}%{$bg[red]%}%~%{$reset_color%} ❯ "

words=("cozy" "comfy" "fresh" "clean" "snug" "breeze" "zen" "money" "cash" "kino")
random_word=${words[RANDOM % ${#words[@]}]}
#fonts=("mono9" "mono12" "ascii9" "ascii12" "future" "smblock" "pagga" "smbraille" "smmono9" "smmono12")
#random_font=${fonts[RANDOM % ${#fonts[@]}]}
toilet "$random_word" -f future | lolcat

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ip='ip -c'
alias pacman='sudo pacman'
alias cl='clear'
alias la='ls -A'
alias ll='ls -lAhF'
alias rm='rm -v'
alias mv='mv -iv'
alias cp='cp -iv'
alias open='xdg-open'
alias doppler='mpv https://radar.weather.gov/ridge/standard/KIND_loop.gif'
#alias top='top -o %MEM -E g -d 5'

export PATH="$HOME/scripts/done:$PATH"

#bindkey "^[[A" history-beginning-search-backward
#bindkey "^[[B" history-beginning-search-forward

lfcd () {
    tmp="$(mktemp -uq)"
    trap 'rm -f $tmp >/dev/null 2>&1 && trap - HUP INT QUIT TERM PWR EXIT' HUP INT QUIT TERM PWR EXIT
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' '^ulfcd\n'
bindkey -s '^f' '^ucd "$(dirname "$(fzf)")"\n'

source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null
