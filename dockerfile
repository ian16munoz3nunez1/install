FROM ubuntu:latest
SHELL ["/bin/bash", "-c"]

# primary configuration
RUN apt update -y && apt upgrade -y && apt dist-upgrade -y && apt autoremove -y
RUN ln -sfn /usr/share/zoneinfo/America/Mexico_City /etc/localtime

# first packages
RUN apt install sudo -y
RUN apt install ssh -y
RUN apt install vsftpd -y
RUN apt install net-tools -y
RUN apt install iproute2 -y
RUN apt install vim
RUN apt install git

RUN echo "write_enable=YES" >> /etc/vsftpd.conf
RUN echo "pasv_min_port=30000" >> /etc/vsftpd.conf
RUN echo "pasv_max_port=40000" >> /etc/vsftpd.conf

# User settings
RUN useradd -rm -d /home/ianemn -s /bin/bash -g root -G sudo ianemn
RUN echo "ianemn:IanEMN1631" | chpasswd
USER ianemn
WORKDIR /home/ianemn

EXPOSE 21
EXPOSE 22

# setup
ENTRYPOINT echo "IanEMN1631" | sudo -S service ssh start && echo "IanEMN1631" | sudo -S service vsftpd start && tail -f /dev/null

