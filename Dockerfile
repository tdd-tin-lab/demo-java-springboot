# For Java 11, try this
#FROM adoptopenjdk/openjdk11:alpine-jre
FROM openjdk:11.0.1-jdk-slim

# Refer to Maven build -> finalName
#ARG JAR_FILE=target/Covid-Track-0.0.1-SNAPSHOT.jar

# cd /opt/app
WORKDIR /app

# cp target/spring-boot-web.jar /opt/app/app.jar
COPY target/*.jar /app/app.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]
