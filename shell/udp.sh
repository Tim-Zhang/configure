## send metric to graphite
##  
##  crontab script:  
##          类别.Host.频率(daily,hourly,5min,10sec,etc).脚本名称（或脚本用途）
##
##  metric="crontabs.mothership.daily.webdatabase-snapshot"
##

host="172.4.0.23"
port="8125"

ts=`date '+%s'`;
metric="cronjob.daily.mothership.webdatabase-snapshot"

value="$metric:$ts|g"


exec 3<> /dev/udp/$host/$port

printf $value >&3

exec 3<&-
exec 3>&-
