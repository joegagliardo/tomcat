FROM tomcat:8.0
LABEL maintainer="joegagliardo@gmail.com"

#ADD sample.war /usr/local/tomcat/webapps/
ADD sample.war /usr/local/tomcat/webapps/

# RUN apk update

# RUN add-apt-repository ppa:linuxuprising/java -y && \
#     apt-get update && \
#     apt-get install -y oracle-java17-installer oracle-java17-set-default
#    apt-get clean;

#ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/

#RUN apk add openjdk17
# RUN apk add ppa:linuxuprising/java -y
# apk add librdkafka --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community
EXPOSE 8080
CMD ["catalina.sh", "run"]
