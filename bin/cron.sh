cron=stow/cron/.config/cron
cronjob="0 12 1 * * yes | \$(which trash-empty) 30 >> $cron/cronjob.log"

if [ $1 = 'init' ]; then
	echo "--- cron/init.sh ---"

	if [ ! -d $cron ]; then mkdir -p $cron; fi
	if ! crontab -l 2>/dev/null | grep -Fxq "$cronjob"; then
		(
			crontab -l 2>/dev/null
			echo "$cronjob"
		) | crontab -
		echo "$cronjob"
	fi

else if [ $1 = 'uninstall' ]; then
	echo "--- cron/uninstall.sh ---"

	crontab -l 2>/dev/null | grep -vxF "$cronjob" | crontab -
	echo "$cronjob"

fi; fi
