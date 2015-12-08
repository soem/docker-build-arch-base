mkdir ./build/
docker run --privileged -v "`pwd`/build/:/mnt" soem/build-arch-base:devel
ls -lh build/
