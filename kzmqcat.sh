ps auxf|grep "sdhou"|grep -v "grep"|awk '{print $2}'|xargs kill
date=`date +%Y-%m-%d`
hostname=`hostname`
#nohup tail -F /data1/mobile-log/$date.log sdhou|/home/evans/.pythonbrew/pythons/Python-2.7.3/bin/python /home/evans/zmqcat.py "tcp://*:8964" $hostname sdhou &
nohup tail -F /data1/logs/apache2/api.anjuke.com-access_log_$date sdhou|/home/evans/.pythonbrew/pythons/Python-2.7.3/bin/python /home/evans/zmqcat.py "tcp://*:8964" $hostname sdhou &
nohup tail -F /data1/mobile-log/action/$date.txt sdhou|/home/evans/.pythonbrew/pythons/Python-2.7.3/bin/python /home/evans/zmqcat.py "tcp://*:8965" $hostname sdhou &
#nohup tail -F /data1/mobile-log/crash/$date.log sdhou|/home/evans/.pythonbrew/pythons/Python-2.7.3/bin/python /home/evans/zmqcat.py "tcp://*:8966" $hostname sdhou &
