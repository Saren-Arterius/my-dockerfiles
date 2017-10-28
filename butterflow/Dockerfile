FROM base/archlinux
RUN pacman -Suy git sudo base-devel perl --noconfirm
RUN useradd butterflow
RUN bash -c "echo 'butterflow ALL=NOPASSWD: /usr/bin/pacman' >> /etc/sudoers && echo MAKEFLAGS=\"-j$(nproc)\" >> /etc/makepkg.conf"
# I would appreciate if you could make pacaur work in docker, it just keep saying 'editor variable unset' whatever I tried
RUN sudo -u butterflow bash -c 'cd /tmp && git clone https://aur.archlinux.org/package-query.git && cd package-query && yes | makepkg -si && cd .. && git clone https://aur.archlinux.org/yaourt.git && cd yaourt && yes | makepkg -si && cd ..'
RUN sudo -u butterflow yaourt -S aur/butterflow --noconfirm
RUN bash -c 'mkdir /home/butterflow && chown butterflow:butterflow /home/butterflow'
RUN sudo -u butterflow gpg --recv-keys 702353E0F7E48EDB
RUN sudo -u butterflow yaourt -S intel-opencl-runtime --noconfirm
