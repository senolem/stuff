#!/bin/bash
echo "Started backup on `date +%d/%m/%Y` at `date +"%T"`"
echo "Removed backup files : $(rm -rvf ~/backups/*.tgz ~/backups/*.sql > ~/logs/backup.log && wc -l < ~/logs/backup.log)"
echo "Saved files (logs available at /logs/backup.log) : $(tar -zvcf ~/backups/backup_`date +%d_%m_%Y`.tgz -P ~/public_html > ~/logs/backup.log && wc -l < ~/logs/backup.log)"
echo "Saved database" && /usr/bin/mysqldump --routines -u user -p'password' dbname > ~/backups/backup_`date +%d_%m_%Y`.sql
echo "Successfully created backup at `date +"%T"`"
