FROM mvimal678/centos-java8:1.0

MAINTAINER MVIMAL MVIMAL678@GMAIL.COM
WORKDIR /opt/app
COPY target/RpmSpringApp-0.0.1.jar ./RpmSpringApp-0.0.1.jar
COPY scripts/startup.sh ./startup.sh
COPY scripts/demo.sh ./demo.sh

RUN ["chmod", "+x", "/opt/app/startup.sh"]
RUN ["chmod", "+x", "/opt/app/demo.sh"]
EXPOSE 9091
ENV PARAMS="-Dspring.application.name=$$\${value}"
ENTRYPOINT ["sh","-c","/opt/app/startup.sh"]

