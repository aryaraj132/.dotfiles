rm -rf ~/.zshrc
rm -rf ~/.gitconfig
rm -rf ~/.config/nvim
rm -rf ~/.config/alacritty

ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
mkdir ~/.config/nvim/
ln -s ~/.dotfiles/.config/nvim ~/.config
mkdir ~/.config/alacritty/
ln -s ~/.dotfiles/.config/alacritty/ ~/.config
