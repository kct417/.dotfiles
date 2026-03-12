echo "--- ubuntu/install.sh ---"
sudo apt install bat build-essential eza fd-find nodejs npm ripgrep stow trash-cli -y
sudo apt autoremove

DEFAULT=/etc/skel/.bashrc
BASHRC=stow/ubuntu/.bashrc
if [ ! -f ~/.bashrc ]; then	if [ ! -f ~/.bashrc ]; then cp $DEFAULT $BASHRC; fi fi

LOG=~/.cron.log
CRON="0 12 1 * * yes | \$(which trash-empty) 30 >> $LOG"
if ! crontab -l 2>/dev/null | grep -Fxq "$CRON"; then
    (crontab -l 2>/dev/null; echo "$CRON") | crontab -
	echo "Cron job installed: $CRON"
fi
