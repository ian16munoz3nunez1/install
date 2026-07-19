#!/bin/bash

USER=$1

if [ -f /etc/init.lock ]; then
    # User settings
    mkdir -p /home/$USER/Desktop /home/$USER/Downloads /home/$USER/Music /home/$USER/Pictures /home/$USER/Videos /home/$USER/.ssh
    chown $USER:$USER -R /home/$USER/Desktop /home/$USER/Downloads /home/$USER/Music /home/$USER/Pictures /home/$USER/Videos /home/$USER/.ssh
    chmod 700 -R /home/$USER/Desktop /home/$USER/Downloads /home/$USER/Music /home/$USER/Pictures /home/$USER/Videos /home/$USER/.ssh
    chown $USER:$USER -R /home/$USER
    chmod 700 -R /home/$USER

    mv /tmp/.vimrc /home/$USER/
    chown $USER:$USER /home/$USER/.vimrc
    chmod 700 /home/$USER/.vimrc
    mv /tmp/.vim/ /home/$USER/
    chown $USER:$USER -R /home/$USER/.vim/
    chmod 700 -R /home/$USER/.vim/

    git clone https://github.com/ohmybash/oh-my-bash.git
    sudo -u $USER bash ./oh-my-bash/tools/install.sh
    sed -i 's/OSH_THEME=\"font\"/OSH_THEME=\"agnoster\"/g' /home/$USER/.bashrc

    echo "$PASSWORD" | sudo -S mv /tmp/git-shell-commands /home/git/
    chown git:git -R /home/git
    chmod 700 -R /home/git

    echo "$PASSWORD" | sudo -S rm /etc/init.lock
fi

echo "$PASSWORD" | sudo -S service ssh start && echo "$PASSWORD" | sudo -S service vsftpd start && echo "$PASSWORD" | sudo -S service mariadb start && tail -f /dev/null
