# Install Xcode Command Line Tools
sudo xcode-select --install
sudo xcodebuild -license accept

# Install Brew
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Install Nix
sh <(curl -L https://nixos.org/nix/install)

# Install OhMyZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install RustUp
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install Mac-CLI
sh -c "$(curl -fsSL https://raw.githubusercontent.com/guarinogabriel/mac-cli/master/mac-cli/tools/install)"

# Install SpaceShip
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Install NVChad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

# Install AwesomeVim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
cd ~/.vim_runtime
git reset --hard
git clean -d --force
git pull --rebase
pip3 install requests
python3 ~/.vim_runtime/update_plugins.py

# Install PowerLine Fonts
git clone https://github.com/powerline/fonts.git --depth=1 ~/Fonts
chmod +x ~/Fonts/install.sh
~/Fonts/install.sh
rm -r ~/Fonts

# Install Flutter
mkdir ~/Developer
git clone https://github.com/flutter/flutter.git -b stable ~/Developer/Flutter
sudo gem uninstall ffi && sudo gem install ffi -- --enable-libffi-alloc
sudo gem install cocoapods
~/Developer/Flutter/bin/flutter doctor --android-licenses
~/Developer/Flutter/bin/flutter doctor

# Install Astro
mkdir ~/Developer/Site
npm create astro@latest

# Return Home
cd ~/
