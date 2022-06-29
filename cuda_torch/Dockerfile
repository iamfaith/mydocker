FROM nvidia/cuda:11.0-base
# FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04


ENV TZ=Asia/Shanghai

# ADD sources.list /etc/apt/sources.list_bak
ADD sources.list /etc/apt/sources.list

# RUN apt-get update && apt install -y openssh-server && rm -rf /var/lib/apt/lists/*
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A4B469963BF863CC && apt-get update && DEBIAN_FRONTEND=noninteractive apt install -y python3-opencv openssh-server vim git wget iputils-ping telnet supervisor sudo && rm -rf /var/lib/apt/lists/*



RUN mkdir /var/run/sshd
RUN echo 'root:UICds!' | chpasswd
RUN sed -i 's/#*PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed -i 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd

# ENV NOTVISIBLE "in users profile"
# RUN echo "export VISIBLE=now" >> ~/.bashrc

RUN echo "export PATH=/usr/local/nvidia/bin:/usr/local/cuda/bin:${PATH}" >> ~/.bashrc

ADD ./data/torch /torch

EXPOSE 22
# CMD ["/usr/sbin/sshd", "-D"]




################################## old
# FROM  xianzixiang/cuda11:torch
# RUN rm -rf /root/* && rm -rf /var/lib/apt/lists/*
# ADD ./data/torch /torch