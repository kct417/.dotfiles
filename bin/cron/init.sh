echo "--- cron/init.sh ---"

cron=stow/cron/.config/cron
log=~/.config/cron/cron.log
cronjob="0 12 1 * * yes | \$(which trash-empty) 30 >> $log"

if [ ! -d $cron ]; then mkdir -p $cron; fi
if ! crontab -l 2>/dev/null | grep -Fxq "$cronjob"; then
	(
		crontab -l 2>/dev/null
		echo "$cronjob"
	) | crontab -
	echo "$cronjob"
fi
