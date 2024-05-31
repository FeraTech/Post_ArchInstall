echo "Uninstalling unnecesary stuff"
sleep 2s
sudo pacman -Rnsc vim
echo "Updating the system..."
sleep 3s
sudo pacman -Syyyu
echo "Installing base-devel headers, zen and zen-headers"
sleep 3s
sudo pacman --needed -S base-devel linux-headers linux-zen linux-zen-headers
echo "Installing git and go"
sleep 3s
sudo pacman --needed -S git go
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
yay --needed -S dialog mtools dosfstools ntfs-3g xdg-user-dirs bash-completion rsync reflector gvfs gvfs-mtp
echo "Installing fonts"
sleep 3s
yay --needed -S adobe-source-code-pro-fonts ttf-carlito ttf-dejavu ttf-droid ttf-jetbrains-mono ttf-liberation noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-roboto ttf-roboto-mono ttf-ubuntu-font-family ttf-ms-fonts otf-takao
echo "Installing gtk stuff"
sleep 3s
yay --needed -S materia-gtk-theme papirus-icon-theme
echo "Installing other tools"
sleep 3s
yay --needed -S neofetch htop btop figlet cmatrix tree asciiquarium unrar zip unzip p7zip neovim wl-clipboard wget man perl-rename gufw
sudo ufw enable
echo "Installing AUR tools"
sleep 3s
yay --needed -S pfetch inxi libva-utils
echo "Installing multimedia stuff"
sleep 3s
yay --needed -S vlc gstreamer gstreamer-vaapi gst-libav gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly intel-gpu-tools
echo "Installing pipewire and audio stuff"
sleep 3s
yay --needed -S pipewire gst-plugin-pipewire pipewire-v4l2 pipewire-x11-bell pipewire-zeroconf realtime-privileges
echo "Adding user to the realtime group"
sleep 3s
sudo usermod -a -G realtime $USER
echo "Installing some apps"
sleep 3s
yay --needed -S thunderbird telegram-desktop libreoffice-still libreoffice-still-es hunspell hunspell-es_mx onlyoffice-bin
echo "Installing disk utilities"
sleep 3s
yay --needed -S gparted jfsutils f2fs-tools exfatprogs reiserfsprogs udftools nilfs-utils gpart gnome-disk-utility
echo "Installing more apps"
sleep 3s
yay --needed -S chezmoi obs-studio audacity bleachbit gimp inkscape minder shotcut clipgrab handbrake
echo "Installing even more apps"
sleep 3s
yay --needed -S code retroarch retroarch-assets-glui retroarch-assets-ozone retroarch-assets-xmb libretro-core-info libretro-overlays libretro-shaders-slang spotify ardour
echo "Installing Sway stuff"
sleep 3s
yay -S sway swaybg swayidle swaylock imv wf-recorder wl-clipboard alacritty waybar otf-font-awesome wofi brightnessctl pavucontrol xdg-desktop-portal-wlr nwg-look
echo "OK! :))"
