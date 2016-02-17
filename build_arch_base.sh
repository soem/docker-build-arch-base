mkdir -p ./build/
rm -f ./build/*
docker run --privileged -v "`pwd`/build/:/mnt" soem/build-arch-base:devel
mv build/archlinux-base.tar.xz archlinux-base.tar.xz
