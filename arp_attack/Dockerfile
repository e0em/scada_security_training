FROM ubuntu:20.04
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
        curl   \
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
     && rm -rf /var/lib/apt/lists/*

# Create the "seed" user account
# Change seed's and root's passwords to "dees"
RUN  useradd -m -s /bin/bash seed \
     && echo "root:dees" | chpasswd \
     && echo "seed:dees" | chpasswd

COPY bashrc /home/seed/.bashrc
COPY bashrc /root/.bashrc

CMD /bin/bash

