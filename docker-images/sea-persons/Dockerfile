FROM openjdk:8-jdk-alpine

COPY tmp/sea-persons*.jar sea-persons.jar
ENTRYPOINT ["java", "-jar", "-Djava.security.egd=file:/dev/./urandom", "-Dspring.profiles.active=docker","sea-persons.jar"]
