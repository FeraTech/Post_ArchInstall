echo "Uninstalling unnecesary stuff"
sleep 2s
sudo pacman -Rnsc vim
echo "Updating the system..."
sleep 3s
sudo pacman -Syyyu
echo "Installing base-devel headers, zen and zen-headers"
sleep 3s
sudo pacman -S base-devel linux-headers linux-zen linux-zen-headers
echo "Installing git and go"
sleep 3s
sudo pacman -S git go
echo "Installing yay"
sleep 3s
git clone https://aur.archlinux.org/yay.git
cd yay/
makepkg -si
cd ..
rm -rf yay/
echo "Updating the system... again"
sleep 3s
yay
echo "Installing basic system tools"
sleep 3s
yay -S dialog mtools dosfstools ntfs-3g xdg-user-dirs bash-completion rsync reflector gvfs gvfs-mtp
echo "Installing fonts"
sleep 3s
yay -S ttf-dejavu noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-bitstream-vera ttf-liberation ttf-roboto ttf-roboto-mono ttf-ubuntu-font-family ttf-jetbrains-mono ttf-inconsolata otf-crimson ttf-carlito ttf-ms-fonts otf-takao
echo "Installing gtk stuff"
sleep 3s
## yay -S gtk-engine-murrine gtk-engines materia-gtk-theme
yay -S materia-gtk-theme papirus-icon-theme 
echo "Installing other tools"
sleep 3s
yay -S neofetch htop btop figlet cmatrix tree asciiquarium unrar zip unzip p7zip neovim wl-clipboard wget man perl-rename gufw
sudo ufw enable
echo "Installing AUR tools"
sleep 3s
yay -S pfetch inxi libva-utils
echo "Installing multimedia stuff"
sleep 3s
yay -S vlc gstreamer gstreamer-vaapi gst-libav gst-plugins-bad gst-plugins-base gst-plugins-good gst-plugins-ugly intel-gpu-tools
echo "Installing pipewire and audio stuff"
sleep 3s
yay -S pipewire gst-plugin-pipewire pipewire-v4l2 pipewire-x11-bell pipewire-zeroconf realtime-privileges
echo "Adding user to the realtime group"
sleep 3s
sudo usermod -a -G realtime $USER
echo "Installing some apps"
sleep 3s
yay -S thunderbird telegram-desktop obsidian libreoffice-still hunspell hunspell-es_mx onlyoffice-bin
echo "Installing disk utilities"
sleep 3s
yay -S gparted jfsutils f2fs-tools exfatprogs reiserfsprogs udftools nilfs-utils gpart gnome-disk-utility
echo "Installing more apps"
sleep 3s
## yay -S chezmoi transmission-qt obs-studio audacity pdfarranger bleachbit gimp inkscape minder shotcut clipgrab handbrake gummi netbeans zoom
yay -S chezmoi obs-studio audacity bleachbit gimp inkscape minder shotcut clipgrab handbrake
echo "Installing KDE apps"
sleep 3s
## yay -S spectacle gwenview okular packagekit-qt5 kdenlive krita elisa kdeconnect arc-kde materia-kde
echo "Installing even more apps"
sleep 3s
yay -S code retroarch retroarch-assets-glui retroarch-assets-ozone retroarch-assets-xmb libretro-core-info libretro-overlays libretro-shaders-slang spotify ardour
echo "Installing some apps"
sleep 3s
## yay -S qogir-gtk-theme qogir-kde-theme-git qogir-icon-theme tela-icon-theme
echo "OK! :))"
