#!/bin/sh
echo
echo "Make bold with 1;XXm. Reset to deafult with 0m after escaping, e.g. '\033[0m'. Also escape with '\e[0m'"
echo
echo -e "0;30m \e[0;30mBlack\e[0m    |  0;37m \e[0;37mLight Gray\e[0m    |      97;40m  \e[97;40m Black Bg   \e[0m |     30;37m \e[30;47m Light Gray    \e[0m"
echo -e "0;97m \e[0;97mWhite\e[0m    |  0;90m \e[0;90mGray\e[0m          |   1;30;107m  \e[1;30;107m White Bg   \e[0m |     97;90m \e[97;100m Gray Bg       \e[0m"
echo -e "0;31m \e[0;31mRed\e[0m      |  0;91m \e[0;91mLight Red\e[0m     |      97;41m  \e[97;41m Red Bg     \e[0m |    30;101m \e[30;101m Light Red     \e[0m"
echo -e "0;32m \e[0;32mGreen\e[0m    |  0;92m \e[0;92mLight Green\e[0m   |      30;42m  \e[30;42m Green Bg   \e[0m |    30;102m \e[30;102m Light Green   \e[0m"
echo -e "0;33m \e[0;33mYellow\e[0m   |  0;93m \e[0;93mLight Yellow\e[0m  |    1;30;43m  \e[1;30;43m Yellow Bg  \e[0m |    30;103m \e[30;103m Light Yellow  \e[0m"
echo -e "0;34m \e[0;34mBlue\e[0m     |  0;94m \e[0;94mLight Blue\e[0m    |      97;44m  \e[97;44m Blue Bg    \e[0m |    30;104m \e[30;104m Light Blue    \e[0m"
echo -e "0;35m \e[0;35mMagenta\e[0m  |  0;95m \e[0;95mLight Magenta\e[0m |    1;30;45m  \e[1;30;45m Magenta Bg \e[0m |  1;30;105m \e[1;30;105m Light Magenta \e[0m"
echo -e "0;36m \e[0;36mCyan\e[0m     |  0;96m \e[0;96mLight Cyan\e[0m    |    1;30;46m  \e[30;46m Cyan Bg    \e[0m |    30;106m \e[30;106m Light Cyan    \e[0m"
echo
