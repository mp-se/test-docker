#FROM openjdk:11.0.8-jdk-slim
#FROM openjdk:11-jdk-slim
FROM openjdk:11-jre-slim

COPY container-entrypoint.sh /opt/container-entrypoint.sh

RUN chmod -R a+rwx /opt

WORKDIR /opt

EXPOSE 8080 8091

CMD ["/opt/container-entrypoint.sh"]
