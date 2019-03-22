FROM ubuntu:18.04

# ###### SSH CONFIG ######
RUN apt-get update && apt-get install --no-install-recommends -y openssh-server
RUN mkdir /var/run/sshd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config \
    && sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/' /etc/ssh/sshd_config \
    && sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
RUN echo 'root:toor' | chpasswd

EXPOSE 22
######

# ###### JAVA 8 ######
RUN apt-get install --no-install-recommends -y software-properties-common \
    && add-apt-repository -y ppa:webupd8team/java \
    && apt-get update
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get install --no-install-recommends -y oracle-java8-set-default ssh rsync
RUN echo 'JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:bin/java::")' >> ~/.bashrc
# RUN groupadd -r develop && useradd -r -m -g develop develop
######

USER root

CMD ["/usr/sbin/sshd", "-D"]
