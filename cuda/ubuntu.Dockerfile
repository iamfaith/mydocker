FROM ubuntu

ADD ./container /opt

USER root



########################################## ubuntu
ENV PATH="/root/miniconda3/bin:${PATH}"
ARG PATH="/root/miniconda3/bin:${PATH}"

ENV TZ=Asia/Shanghai

# ADD sources.list /etc/apt/sources.list

# RUN apt install ca-certificates

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt install -y openssh-server vim git wget iputils-ping telnet supervisor sudo 
# && rm -rf /var/lib/apt/lists/*

#### other package && application needed
RUN apt-get install -y libgl1

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
########################################## ubuntu

