#!/bin/sh
OPTION=$1
cd /opt/lampp
case $OPTION in
        start)
            sudo setsid ./xampp start
			echo XAMPP has been started!
			echo Opening localhost on Google Chrome
			sudo setsid google-chrome localhost
            ;;
         
        stop)
            sudo setsid ./xampp stop
            echo XAMPP has been stopped!
            ;;
       
        restart)
			sudo ./xampp stop
			sudo setsid ./xampp start
			echo XAMPP has been restarted!
            ;;
         
        *)
            echo $"Usage: $0 {start|stop|restart}"
            exit 1
 
esac
