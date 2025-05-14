# ==============================
# ============Macos=============
# ==============================

for param in $@; do
	if [ $param = "-i" -o $param = "all" ]; then
		echo "[+] Package installation..."
		brew update && brew upgrade && brew install starship npm texlive neovim git stow fastfetch btop firefox tmux
		echo "[+] Packages installation complete"
	fi
	if [ $param = "-npm" -o $param = "all" ]; then
		echo "[+] Installing tree-sitter for neovim..."
		# to have tree-sitter in neovim
		sudo npm install -g tree-sitter-cli
		echo "[+] Tree-sitter installation complete"
	fi
	if [ $param = "-f" -o $param = "all" ]; then
		echo "[+] Updating submodules..."
		git submodule update --init
		echo "[+] Submodules updated"
		echo "[+] Stow zshrc"
		rm ../.zshrc && stow --dotfiles zshrc
		echo "[+] Stow kitty"
		rm ../.config/kitty && stow --dotfiles kitty
		echo "[+] Stow tmux"
		rm ../.config/tmux && stow --dotfiles tmux
		echo "[+] Stow nvim"
		rm ../.config/nvim && stow --dotfiles nvim
		echo "[+] Setup starship"
		starship preset gruvbox-rainbow -o ~/.config/starship.toml
		echo "[+] Setup finished"
	fi
done
if [ $# -eq 0 ]; then
	echo "-i   : to install packages"
	echo "-f   : to stow dotfiles"
	echo "-npm : to install npm things"
	echo "all  : do everything above"
else
	echo "[+] Configuration complete"
fi

# ==============================
# ============GLOBAL============
# ==============================
# To have latex lsp in neovim
# :LspInstall latex
# and choose texlab
