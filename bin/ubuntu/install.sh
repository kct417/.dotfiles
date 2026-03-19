echo "--- ubuntu/install.sh ---"
sudo apt install bat build-essential eza fd-find nodejs npm ripgrep stow trash-cli unzip -y
sudo apt autoremove

CRON=stow/cron/.config/cron
if [ ! -d $CRON ]; then mkdir -p $CRON; fi

LOG=~/.config/cron/cron.log
CRONJOB="0 12 1 * * yes | \$(which trash-empty) 30 >> $LOG"
if ! crontab -l 2>/dev/null | grep -Fxq "$CRONJOB"; then
	(
		crontab -l 2>/dev/null
		echo "$CRONJOB"
	) | crontab -
	echo "$CRONJOB"
fi
