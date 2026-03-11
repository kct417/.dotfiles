echo "--- ubuntu/install.sh ---"
sudo apt install bat build-essential eza fd-find nodejs npm ripgrep shellcheck stow trash-cli -y
sudo snap install bash-language-server --classic
sudo apt autoremove

DEFAULT=/etc/skel/.bashrc
BASHRC=~/.dotfiles/stow/ubuntu/.bashrc
if [ ! -f ~/.bashrc ]; then	if [ ! -f ~/.bashrc ]; then cp $DEFAULT $BASHRC; fi fi

CRON="0 12 1 * * yes | $(which trash-empty) 30 >> ~/.dotfiles/cron.log"
if ! crontab -l 2>/dev/null | grep -Fxq "$CRON"; then
    (crontab -l 2>/dev/null; echo "$CRON") | crontab -
	echo "Cron job installed: $CRON"
fi
