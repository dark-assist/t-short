#!/data/data/com.termux/files/usr/bin/bash
#This is a simple bash script for installing basic tools in Termux.
#cradit Sanatani-hacker.
clear
export video='https://youtube.com/shorts/KQMo4-2YXUs?si=6jNfWCLjLgqxy3cE'
about() {
clear
banner
echo "Youtube: https://youtube.com/@sanatanihackers?si=KuDorQ54gUQ02Wwo"
echo "Instagram: https://www.instagram.com/unknown_dark_user/"
}

banner() {
printf "\e[92m██████████    ████████ ██      ██   ███████   ███████  ██████████\e[0m\n"
printf "\e[92m░░░░░██░░░    ██░░░░░░ ░██     ░██  ██░░░░░██ ░██░░░░██░░░░░██░░░\e[0m\n"
printf "\e[92m    ░██      ░██       ░██     ░██ ██     ░░██░██   ░██    ░██\e[0m\n"
printf "\e[92m    ░██ █████░█████████░██████████░██      ░██░███████     ░██\e[0m\n"
printf "\e[92m    ░██░░░░░ ░░░░░░░░██░██░░░░░░██░██      ░██░██░░░██     ░██\e[0m\n"
printf "\e[92m    ░██             ░██░██     ░██░░██     ██ ░██  ░░██    ░██\e[0m\n"
printf "\e[92m    ░██       ████████ ░██     ░██ ░░███████  ░██   ░░██   ░██\e[0m\n"
printf "\e[92m    ░░       ░░░░░░░░  ░░      ░░   ░░░░░░░   ░░     ░░    ░░\e[0m\n"
echo ""
echo "TERMUX SHORTCUT MAKER SCRIPT BY SANATANI-HACKER"
echo "Telegram: https://t.me/temuxhacking"
echo "Github: https://github.com/dark-assist"
echo ""
}
banner

#shell 1

shell1() {
clear
banner
#shortcuts
	s1() {
	        read -p "Write The Command That Requires Shortcut :" sc
	        read -p "Enter The Name of The Shortcut :" sn
	        echo "alias $sn='$sc'" >> $PREFIX/etc/bash.bashrc
	        echo "Shortcut Created."
	        echo "Note: Restart Termux Before Using Shortcut."
	}
	
	s2() {
	        xdg-open $video
	}
	
	s3() {
	        about
	}
	
	export rerun='bash test.sh'
	
	
	echo "Menu Options:"
	echo "1. Shortcut Maker."
	echo "2. How to Use."
	echo "3. About Owner."
	echo "99. Exit"
	read -p "Choose an option : " option
	
	
	case $option in
	        1)
	            s1
	        ;;
	
	        2)
	            s2
	        ;;
	
	        3)
	            s3
	        ;;
	
	        99)
	            echo "Bye......." && exit
        	;;
	
	        *)
	            echo "Invalid option." && sleep 2 && clear && $rerun
	        ;;
	esac
}

#shell 2
shell2() {
	clear
banner
#shortcuts
	s1() {
	        read -p "Write The Command That Requires Shortcut :" sc
	        read -p "Enter The Name of The Shortcut :" sn
	        echo "alias $sn '$sc'" >> $HOME/.config/fish/config.fish
	        echo "Shortcut Created."
	        echo "Note: Restart Termux Before Using Shortcut."
	}
	
	s2() {
	        xdg-open $video
	}
	
	s3() {
	        about
	}
	
	export rerun='bash test.sh'
	
	
	echo "Menu Options:"
	echo "1. Shortcut Maker."
	echo "2. How to Use."
	echo "3. About Owner."
	echo "99. Exit"
	read -p "Choose an option : " option
	
	
	case $option in
	        1)
	            s1
	        ;;
	
	        2)
	            s2
	        ;;
	
	        3)
	            s3
	        ;;
	
	        99)
	            echo "Bye......." && exit
	        ;;
	
	        *)
	            echo "Invalid option." && sleep 2 && clear && $rerun
	        ;;
	esac
}

#shell 3
shell3() {

clear
banner
#shortcuts
        s1() {
                read -p "Write The Command That Requires Shortcut :" sc
                read -p "Enter The Name of The Shortcut :" sn
                echo "alias $sn='$sc'" >> $PREFIX/etc/zshrc
                echo "Shortcut Created."
                echo "Note: Restart Termux Before Using Shortcut."
        }

        s2() {
                xdg-open $video
        }

        s3() {
                about
        }

        export rerun='bash test.sh'


        echo "Menu Options:"
        echo "1. Shortcut Maker."
        echo "2. How to Use."
        echo "3. About Owner."
        echo "99. Exit"
        read -p "Choose an option : " option


        case $option in
                1)
 	           s1
                ;;

                2)
                    s2
                ;;

                3)
                    s3
                ;;

                99)
                    echo "Bye......." && exit
                ;;

                *)
                    echo "Invalid option." && sleep 2 && clear && $rerun
                ;;
        esac
}



#main options
echo "Which Shell You are Using?"
echo "1. bash"
echo "2. fish"
echo "3. zsh"
echo "4. Other."
read -p "Shell Number: " shell_option
case $shell_option in
	1)
	    shell1
	;;

	2)
	    shell2
	;;

	3)
	    shell3
	;;

	4)
	    echo "Currently Other Shell are Not Supported." && exit
esac
