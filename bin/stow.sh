if [ $1 = "init" ]; then
	echo "--- stow/init.sh ---"

	for pkg in stow/*/; do stow -v --adopt --dotfiles -d stow -t ~ "$(basename "$pkg")"; done

else if [ $1 = "uninstall" ]; then
	echo "--- stow/uninstall.sh ---"

	for pkg in stow/*/; do stow -v -D --dotfiles -d stow -t ~ "$(basename "$pkg")"; done

fi; fi
