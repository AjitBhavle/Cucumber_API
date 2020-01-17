FROM openjdk:8
ADD target/Cocumber-0.0.1-SNAPSHOT.jar target/docker-Cocumber-0.0.1-SNAPSHOT.jar
EXPOSE 8082
ENTRYPOINT ["java", "-jar", "docker-Cocumber-0.0.1-SNAPSHOT.jar"]
LABEL maintainer="Ajit Bhavle"