echo "Installing dependencies for compiling whisper.cpp..."
sudo apt-get update
sudo apt-get install -y \
    cmake \
    gcc-aarch64-linux-gnu \
    g++-aarch64-linux-gnu \
    gcc-arm-linux-gnueabihf \
    g++-arm-linux-gnueabihf

echo "Cloning whisper.cpp..."
git submodule init
git submodule update

echo "Compiling whisper.cpp..."
make linuxdotnet run