#!/bin/sh
echo
echo "Make bold with 1;XXm."
echo "Reset with 0m after escaping, e.g. '\033[0m'."
echo "Escape with '\033' and '\e'."
echo
echo -e "0;30m \e[0;30mBlack\e[0m           0;37m \e[0;37mLight Gray\e[0m"
echo -e "0;97m \e[0;97mWhite\e[0m           0;90m \e[0;90mGray\e[0m"
echo -e "0;31m \e[0;31mRed\e[0m             0;91m \e[0;91mLight Red\e[0m"
echo -e "0;32m \e[0;32mGreen\e[0m           0;92m \e[0;92mLight Green\e[0m"
echo -e "0;33m \e[0;33mYellow\e[0m          0;93m \e[0;93mLight Yellow\e[0m"
echo -e "0;34m \e[0;34mBlue\e[0m            0;94m \e[0;94mLight Blue\e[0m"
echo -e "0;35m \e[0;35mMagenta\e[0m         0;95m \e[0;95mLight Magenta\e[0m"
echo -e "0;36m \e[0;36mCyan\e[0m            0;96m \e[0;96mLight Cyan\e[0m"
echo -e "0;37m \e[0;37mLight Gray\e[0m                  
echo
