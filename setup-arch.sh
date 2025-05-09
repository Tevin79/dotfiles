# ==============================
# ==========Arch linux==========
# ==============================
sudo pacman -Syu && sudo pacman -S neovim git texlive
# to have tree-sitter in neovim
sudo npm install -g tree-sitter-cli

# ==============================
# ============GLOBAL============
# ==============================
# To have latex lsp in neovim
# :LspInstall latex 
# and choose texlab
