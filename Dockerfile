#FROM registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift
#FROM amazoncorretto:11.0.12
#FROM ibmjava:11-jdk
#FROM gcr.io/distroless/java-debian10:11
FROM openjdk:11.0.13-jdk-slim
#FROM openjdk:11.0.12-jdk-slim
#FROM openjdk:11.0.8-jdk-slim
#FROM openjdk:11.0.3-jdk-slim
#FROM openjdk:11-jdk-slim
#FROM openjdk:11-jre-slim
#FROM debian:buster-slim
#FROM confluentinc/cp-server

#RUN apt-get update
#RUN apt-get upgrade
#COPY container-entrypoint.sh /opt/container-entrypoint.sh
#RUN chmod -R a+rwx /opt
#WORKDIR /opt
#EXPOSE 8080 8091
#CMD ["/opt/container-entrypoint.sh"]

