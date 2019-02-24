#!/bin/bash
date=$(date +"%m-%d-%y-%T")
renice -n 10 $$	
pid=$2	
case "$1" in
    start)
        echo "Start Nice re/streamer pro"
		killall -9 ffmpeg m3u8-segmenter > /dev/null 2>&1
         cd /nice/
		 ulimit -u unlimited
         ulimit -n 50720
         ulimit -s 50720
         ulimit -i 50720 
         ulimit -l 264
        ./nodenice-pro &
		 echo "Start Done!"
        ;;
    stop)
        echo "Stopping Nice re/streamer pro"
		killall -9 nodenice-pro &
		killall -9 ffmpeg m3u8-segmenter > /dev/null 2>&1
        echo "Stop Done!"
        ;;
	uptime)
        stat=$(pidof nodenice-pro)
		upt=$( ps -p $stat -o etime=)
        echo "re/streamer pro Uptime":$upt
        ;;
	killpid)
        echo "Kill PID $pid"
		kill -9 $pid > /dev/null 2>&1
		;;
    check)
        stat=$(pidof nodenice-pro)
		upt=$( ps -p $stat -o etime=)
		if [ -z "$stat" ] ; then 
		echo "re/streamer pro Not Running"
		/nice/restream.sh start 
		echo "Restaring re/streamer pro [`date`]..." >> /nice/restart.log
		else
        echo "re/streamer pro OK - Uptime":$upt
		fi
        ;;
    restart) 
	echo "Restarting Nice re/streamer pro"
	killall -9 nodenice-pro &
	killall -9 ffmpeg m3u8-segmenter > /dev/null 2>&1
	sleep 1
	cd /nice/
	     renice -n 10 $$
		 ulimit -u unlimited
         ulimit -n 50720
         ulimit -s 50720
         ulimit -i 50720 
         ulimit -l 264
		 ./nodenice-pro &
		echo "Restart Done!"
        ;;
    *)
        echo "usage:`basename $0` start | stop | restart | check | uptime"
        exit 1
        ;;
esac