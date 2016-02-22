#write out current crontab
crontab -l > autosslcron
#echo new cron into cron file
echo "30 2 * * *  sh /opt/autossl/letsencrypt.sh/run.sh" >> autosslcron
#install new cron file
crontab autosslcron
rm autosslcron
