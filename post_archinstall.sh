echo "Updating the system..."
sleep 3s
sudo pacman -Syyyu
echo "Installing base-devel headers, zen and zen-headers"
sleep 3s
sudo pacman -S base-devel linux-headers linux-zen linux-zen-headers
echo "Installing git and go"
sleep 3s
sudo pacman -S git go
echo "Moving to desktop"
sleep 2s
cd ~/Desktop/
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
echo "Uninstalling vim"
sleep 2s
yay -Rnsc vim
echo "Installing basic system tools"
sleep 3s
yay -S dialog os-prober mtools dosfstools ntfs-3g xdg-user-dirs xdg-desktop-portal bash-completion rsync reflector gvfs gvfs-mtp
echo "Installing fonts"
sleep 3s
yay -S ttf-dejavu noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-bitstream-vera ttf-liberation ttf-roboto ttf-roboto-mono ttf-ubuntu-font-family ttf-jetbrains-mono ttf-inconsolata otf-crimson ttf-carlito ttf-ms-fonts otf-takao
echo "Installing gtk stuff"
sleep 3s
yay -S gtk-engine-murrine gtk-engines arc-gtk-theme arc-icon-theme elementary-icon-theme papirus-icon-theme adapta-gtk-theme materia-gtk-theme
echo "Installing other tools"
sleep 3s
yay -S neofetch htop btop figlet cmatrix tree asciiquarium unrar zip unzip p7zip neovim xsel wget
echo "Installing AUR tools"
sleep 3s
yay -S pfetch inxi aic94xx-firmware wd719x-firmware upd72020x-fw r8168 libva-utils
echo "Installing multimedia stuff"
sleep 3s
yay -S vlc gstreamer gstreamer-vaapi gst-libav gst-plugins-bad gst-plugins-base gst-plugins-good gst-plugins-ugly intel-gpu-tools
echo "Installing pipewire and audio stuff"
sleep 3s
yay -S pipewire gst-plugin-pipewire pipewire-v4l2 pipewire-x11-bell pipewire-zeroconf realtime-privileges helvum pavucontrol
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
yay -S chezmoi transmission-qt simplescreenrecorder obs-studio audacity pdfarranger mintstick bleachbit gimp inkscape minder shotcut clipgrab handbrake gummi netbeans pseint-bin staruml zoom
echo "Installing KDE apps"
sleep 3s
yay -S spectacle gwenview okular packagekit-qt5 kdenlive krita elisa kdeconnect arc-kde materia-kde adapta-kde
echo "Installing even more apps"
sleep 3s
yay -S code alacritty man perl-rename retroarch retroarch-assets-glui retroarch-assets-ozone retroarch-assets-xmb libretro-core-info libretro-overlays libretro-shaders-slang spotify ardour bitwarden
echo "Installing some themes"
sleep 3s
yay -S qogir-gtk-theme qogir-kde-theme-git qogir-icon-theme matcha-gtk-theme whitesur-gtk-theme whitesur-icon-theme whitesur-kde-theme-git 
echo "OK! :))"
