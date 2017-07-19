# debian 9 = stretch
FROM debian:9

USER root

RUN apt-get update && \
    # prevent 'debconf: delaying package configuration, since apt-utils is not installed'
    apt-get upgrade -y && \
    apt-get install -y \
        bzip2 \
        cron \
        curl \
        # nslookup, dig, host
        dnsutils \
        git \
        htop \
        # traceroute
        inetutils-traceroute \
        less \
        lsb-release \
        lsof \
        man \
        nano \
        # ifconfig
        net-tools \
        ## ps
        procps \
        # pstree
        psmisc \
        # pygmentize, needed for colorized outputs
        python-pygments \
        sudo \
        tcpflow \
        tree \
        wget \
        zsh \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /home/markus && \
    useradd -d /home/markus -s /bin/zsh markus && \
    chown markus:markus /home/markus && \
    echo "markus ALL=NOPASSWD: ALL" >> /etc/sudoers

USER markus

# install dotfiles
RUN git clone https://github.com/psicho2000/dotfiles.git $HOME/dotfiles && \
    $HOME/dotfiles/symlink-dotfiles.sh && \
    $HOME/dotfiles/install-oh-my-zsh.sh

# afterwards, change passwords with passwd