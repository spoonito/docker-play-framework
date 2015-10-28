FROM ingensi/oracle-jdk
MAINTAINER Ingensi labs <contact@ingensi.com>

RUN yum update -y && yum install -y unzip
RUN curl -O https://downloads.typesafe.com/typesafe-activator/1.3.6/typesafe-activator-1.3.6-minimal.zip 
RUN unzip typesafe-activator-1.3.6-minimal.zip -d / && rm typesafe-activator-1.3.6-minimal.zip && chmod a+x /activator-1.3.6-minimal/activator
ENV PATH $PATH:/activator-1.3.6-minimal

EXPOSE 9000 8888
RUN mkdir /app
WORKDIR /app

CMD ["activator", "run"]
