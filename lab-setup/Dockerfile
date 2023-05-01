FROM ubuntu:20.04
# ARG 將僅在構建期間設定環境。
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update  \
    && apt-get -y install  \
        binutils \
        curl   \
        iproute2  \
        iputils-ping \
        nano   \
        net-tools \
        unzip \
        # 
        arping \
        conntrack \
        dnsutils  \
        iptables \
        mtr-tiny  \
        netcat \
        openbsd-inetd  \
        procps \
        tcpdump   \
        telnet \
        telnetd \
        python3.8-distutils \
        python3-pip \
    && rm -rf /var/lib/apt/lists/* \
    && pip3 install pyftpdlib 

# Create the "user" user account
# Change user's and root's passwords to "user" , "root"
RUN  useradd -m -s /bin/bash user \
     && echo "root:root" | chpasswd \
     && echo "user:user" | chpasswd

COPY bashrc /home/seed/.bashrc
COPY bashrc /root/.bashrc

CMD /bin/bash
