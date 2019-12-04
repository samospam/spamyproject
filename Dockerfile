FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
COPY target/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar app.jar
EXPOSE 8080/tcp
ENTRYPOINT ["java","-jar","/app.jar","--spring.profiles.active=mysql"] 

