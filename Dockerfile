FROM openjdk:11.0.8-jdk-slim

#ENV CLASSPATH /opt/lib

COPY container-entrypoint.sh /opt/container-entrypoint.sh

# OpenShift security model runs the container with a random UID therefore need to give the directory all permissions
RUN chmod -R a+rwx /opt

# Allow importing of certificates
#RUN chmod 777 $JAVA_HOME/lib/security/cacerts

WORKDIR /opt

EXPOSE 8080 8091

# copy pom.xml and wildcards to avoid this command failing if there's no target/lib directory
#COPY pom.xml target/lib* /opt/lib/
#COPY target/*.jar /opt/app.jar

CMD ["/opt/container-entrypoint.sh"]