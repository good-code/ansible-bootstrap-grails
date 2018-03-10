export DEBIAN_FRONTEND=noninteractive
export  UCF_FORCE_CONFFNEW=YES

set -x

sudo ucf --purge /boot/grub/menu.lst
apt-get update
apt-get -o Dpkg::Options::='--force-confnew' upgrade -sq
apt-get -o Dpkg::Options::='--force-confnew' upgrade -yq
