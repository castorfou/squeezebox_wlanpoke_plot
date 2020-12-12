#! /bin/bash

LOG_FILE='/home/guillaume/wlanpoke/1121.log'

case "$1" in
	start)
		echo "Starting log_wlanpoke"
		/bin/nc -l -k -p 1121 >> $LOG_FILE &
		echo "."
		;;
	stop) 
		echo "Stopping log_wlanpoke"
		lsof -ti tcp:1121 | xargs kill
		echo "."
		;;
	restart)
		echo "Stopping log_wlanpoke"
		lsof -ti tcp:1121 | xargs kill
		echo "."
		echo "Starting log_wlanpoke"
		/bin/nc -l -k -p 1121 >> $LOG_FILE &
		echo "."
		;;
	*)
		echo "Usage: log_wlanpoke.sh start|stop|restart"
		exit 1
		;;
esac
