# debian 9 = stretch
FROM debian:9

USER root

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git less nano htop sudo wget curl lsof inetutils-traceroute cron tcpflow lsb-release bzip2 zsh && \
    # pstree
    apt-get install -y psmisc && \
    # ifconfig
    apt-get install -y net-tools && \
    # nsookup, dig, host
    apt-get install -y dnsutils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /home/markus && \
    useradd -d /home/markus -s /bin/zsh markus && \
    echo "markus ALL=NOPASSWD: ALL" >> /etc/sudoers

USER markus

# experimental
#RUN cd /home/markus && \
#    mkdir dotfiles && \
#    git clone github.com/psicho2000/dotfiles && \
#    ln -s ....

# afterwards, change passwords with passwd