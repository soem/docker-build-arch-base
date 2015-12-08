FROM soem/arch-bootstrap:latest

COPY mkimage-arch.sh /root/mkimage-arch.sh
COPY mkimage-arch-pacman.conf /root/mkimage-arch-pacman.conf
COPY pacstrap /usr/bin/pacstrap
COPY arch-chroot /usr/bin/arch-chroot

RUN pacman -S expect tar --noconfirm && yes|pacman -Scc && \
    ln -s /usr/bin/bash /bin/bash

VOLUME "/mnt"
WORKDIR /root

CMD bash /root/mkimage-arch.sh && cp root.tar /mnt
