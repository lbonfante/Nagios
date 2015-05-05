#/bin/sh
#Elimina logs de nagios mayores a 90 dias
#Configurar cron:
#$ sudo crontab -e
#@daily 0 0 * * * /bin/sh $HOME/NagiosDelLogs.sh

#Log of deleted files
find /var/log/nagios3/archives/* -mtime +90 >> $HOME/LogsDelCron.txt
#delete older Logs, MAYBE YOU NEED TO CHANGE THE FOLDER OF YOU LOGS
/usr/bin/find /var/log/nagios3/archives/* -mtime +90 -exec rm -f {} \;
