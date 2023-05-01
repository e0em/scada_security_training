FROM ubuntu:20.04
# ARG 將僅在構建期間設定環境。
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
	&& apt -y install \
		tshark \
		python3.8-distutils \
		python3-pip \
		ftp \
	&& rm -rf /var/lib/apt/lists/*

# Create the "user" user account
# Change user's and root's passwords to "root"
RUN  useradd -m -s /bin/bash user \
     && echo "root:root" | chpasswd \
     && echo "user:user" | chpasswd

COPY bashrc /home/user/.bashrc
COPY bashrc /root/.bashrc

CMD /bin/bash
