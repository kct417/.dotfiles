echo "--- zoxide/install.sh ---"

if ! command -v zoxide >/dev/null 2>&1; then
	curl -vsSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
fi
