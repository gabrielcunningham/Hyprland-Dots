# Install the installer script
sudo dnf install dnf-plugins-core -y
sudo dnf copr enable t0xic0der/nvidia-auto-installer-for-fedora -y
dnf install nvautoinstall -y

# Run the script to install everything for an nvidia card
sudo nvautoinstall checksu
sudo nvautoinstall rpmadd
sudo nvautoinstall driver
sudo nvautoinstall nvrepo
sudo nvautoinstall plcuda
sudo nvautoinstall ffmpeg
sudo nvautoinstall vulkan
sudo nvautoinstall vidacc
