mkdir ./build/
docker run --privileged -v "`pwd`/build/:/mnt" soem/build-arch-base:devel
xz -z -c build/root.tar > archlinux-base.tar.xz
