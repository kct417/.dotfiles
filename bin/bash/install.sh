sudo apt install stow bat eza trash-cli -y
sudo apt autoremove

CRON_TIME="0 12 1 * *"
CRON_JOB="yes | $(which trash-empty) 30"
CRON_LOG=~/.dotfiles/cron.log
CRON_LINE="$CRON_TIME $CRON_JOB >> $CRON_LOG"
if ! crontab -l 2>/dev/null | grep -Fxq "$CRON_LINE"; then
    (crontab -l 2>/dev/null; echo "$CRON_LINE") | crontab -
	echo "Cron job installed:"
	echo "$CRON_LINE"
fi

