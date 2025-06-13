FROM ubuntu:latest
SHELL ["/bin/bash", "-c"]
ENV USER=ianemn
ENV PASSWORD=IanEMN1631

# primary configuration
RUN apt update -y && apt upgrade -y && apt dist-upgrade -y && apt autoremove -y
RUN ln -sfn /usr/share/zoneinfo/America/Mexico_City /etc/localtime

# first packages
RUN apt install sudo -y
RUN apt install ssh -y
RUN apt install vsftpd -y
RUN apt install iputils-ping -y
RUN apt install net-tools -y
RUN apt install iproute2 -y
RUN apt install vim -y
RUN apt install git -y
RUN apt install tmux -y
RUN apt install caca-utils -y
RUN apt install curl -y
RUN apt install wget -y
RUN apt install tree -y
RUN apt install python3 -y
RUN apt install python3-flask -y

RUN echo "write_enable=YES" >> /etc/vsftpd.conf
RUN echo "pasv_min_port=30000" >> /etc/vsftpd.conf
RUN echo "pasv_max_port=40000" >> /etc/vsftpd.conf

# User settings
RUN useradd -rm -d /home/$USER -s /bin/bash -g root -G sudo $USER
RUN echo "$USER:$PASSWORD" | chpasswd
RUN groupadd $USER -U $USER
RUN chown $USER:$USER -R /home/$USER
RUN chmod 700 -R /home/$USER

RUN mkdir /home/$USER/Desktop /home/$USER/Downloads /home/$USER/Music /home/$USER/Pictures /home/$USER/Videos
RUN chown $USER:$USER -R /home/$USER/Desktop /home/$USER/Downloads /home/$USER/Music /home/$USER/Pictures /home/$USER/Videos
RUN chmod 600 -R /home/$USER/Desktop /home/$USER/Downloads /home/$USER/Music /home/$USER/Pictures /home/$USER/Videos

RUN useradd -rm -d /home/git -s /bin/bash -g root -G sudo git
RUN echo "git:git" | chpasswd
RUN groupadd git -U git
RUN chown git:git -R /home/git
RUN chmod 700 -R /home/git

COPY .ssh/id_rsa.pub /home/$USER/.ssh/authorized_keys
COPY .ssh/id_rsa.pub /home/git/.ssh/authorized_keys

USER $USER
WORKDIR /home/$USER

RUN git clone https://github.com/ohmybash/oh-my-bash
RUN ./oh-my-bash/tools/install.sh

RUN git clone https://github.com/ian16munoz3nunez1/install
RUN curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN mv install/.vimrc .

EXPOSE 21
EXPOSE 22

# setup
ENTRYPOINT echo "$PASSWORD" | sudo -S service ssh start && echo "$PASSWORD" | sudo -S service vsftpd start && tail -f /dev/null

