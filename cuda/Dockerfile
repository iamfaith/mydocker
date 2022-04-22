FROM nvidia/cuda:11.0-base
# FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04

ENV PATH="/root/miniconda3/bin:${PATH}"
ARG PATH="/root/miniconda3/bin:${PATH}"

ENV TZ=Asia/Shanghai

# ADD sources.list /etc/apt/sources.list_bak
ADD sources.list /etc/apt/sources.list

# RUN apt-get update && apt install -y openssh-server && rm -rf /var/lib/apt/lists/*
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt install -y openssh-server vim git wget && rm -rf /var/lib/apt/lists/*

#RUN wget \
#    https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \

ADD Miniconda3-latest-Linux-x86_64.sh /opt

RUN  mkdir /root/.conda \
    && bash /opt/Miniconda3-latest-Linux-x86_64.sh -b \
    && rm -f /opt/Miniconda3-latest-Linux-x86_64.sh 

RUN mkdir /var/run/sshd
RUN echo 'root:UICds!' | chpasswd
RUN sed -i 's/#*PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed -i 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd

# ENV NOTVISIBLE "in users profile"
# RUN echo "export VISIBLE=now" >> ~/.bashrc

RUN echo "export PATH=/root/miniconda3/bin:/usr/local/nvidia/bin:/usr/local/cuda/bin:${PATH}" >> ~/.bashrc

EXPOSE 22
# CMD ["/usr/sbin/sshd", "-D"]
