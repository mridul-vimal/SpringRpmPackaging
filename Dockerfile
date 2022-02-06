FROM centos:8

MAINTAINER MVIMAL MVIMAL678@GMAIL.COM
COPY RpmSpringApp-0.0.1-1.x86_64.rpm /opt/RpmSpringApp-0.0.1-1.x86_64.rpm

RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-Linux-* &&\
    sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-Linux-*

RUN yum install -y \
       java-1.8.0-openjdk \
       java-1.8.0-openjdk-devel

ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk/
RUN yum -y install /opt/RpmSpringApp-0.0.1-1.x86_64.rpm
EXPOSE 9091
ENTRYPOINT ["sh","-c","/opt/app/RpmSpringApp/bin/startup.sh"]
