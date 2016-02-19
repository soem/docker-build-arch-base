FROM soem/arch-bootstrap:latest

RUN pacman -S expect tar --force --noconfirm && yes|pacman -Scc

COPY files/mkimage-arch.sh /root/mkimage-arch.sh
COPY files/mkimage-arch-pacman.conf /root/mkimage-arch-pacman.conf
COPY files/pacstrap /usr/bin/pacstrap
COPY files/arch-chroot /usr/bin/arch-chroot

VOLUME "/mnt"
WORKDIR /root

CMD bash /root/mkimage-arch.sh && cp archlinux-base.tar.xz /mnt
