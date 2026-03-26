echo "--- cron/uninstall.sh ---"

log=~/.config/cron/cron.log
cronjob="0 12 1 * * yes | \$(which trash-empty) 30 >> $log"

crontab -l 2>/dev/null | grep -Fxv "$cronjob" | crontab -
