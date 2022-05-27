#!/bin/bash

#update&install
pacman -Syyu openssh git docker zsh zsh-completions curl --noconfirm
#SSH
systemctl enable sshd
systemctl start sshd
ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa <<< y &&\
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys &&\
#docker
systemctl enable docker
systemctl start docker
systemctl enable containerd
systemctl start containerd

#zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp .zshrc ~/.zshrc
