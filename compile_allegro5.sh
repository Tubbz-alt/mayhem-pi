sudo apt-get update
sudo apt-get --assume-yes install build-essential git cmake cmake-curses-gui xorg-dev libgl1-mesa-dev libglu-dev libpng-dev libcurl4-nss-dev libfreetype6-dev  libjpeg-dev libvorbis-dev libopenal-dev libphysfs-dev libgtk2.0-dev liboss4-salsa-dev libpulse-dev libflac-dev libdumb1-dev
cd ~
git clone https://github.com/liballeg/allegro5.git
cd ~/allegro5
git checkout 5.2.1
mkdir ~/allegro5/build
cd ~/allegro5/build
cmake .. -DCMAKE_TOOLCHAIN_FILE=../cmake/Toolchain-raspberrypi.cmake
make
sudo make install
export PKG_CONFIG_PATH=/home/pi/allegro5/build/lib/pkgconfig
sudo ldconfig