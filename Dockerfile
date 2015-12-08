FROM soem/arch-bootstrap:latest

COPY files/mkimage-arch.sh /root/mkimage-arch.sh
COPY files/mkimage-arch-pacman.conf /root/mkimage-arch-pacman.conf
COPY files/pacstrap /usr/bin/pacstrap
COPY files/arch-chroot /usr/bin/arch-chroot

RUN pacman -S expect tar --noconfirm && yes|pacman -Scc

VOLUME "/mnt"
WORKDIR /root

CMD bash /root/mkimage-arch.sh && cp root.tar /mnt
