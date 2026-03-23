echo "--- cron/uninstall.sh ---"
LOG=~/.config/cron/cron.log
CRONJOB="0 12 1 * * yes | \$(which trash-empty) 30 >> $LOG"
crontab -l 2>/dev/null | grep -Fxv "$CRONJOB" | crontab -
rm -vr stow/cron/
