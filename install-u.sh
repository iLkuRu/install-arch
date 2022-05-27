#ssh
ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa <<< y &&\
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys &&\
#docker

#zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp .zshrc ~/.zshrc
