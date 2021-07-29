# create an Image
FROM openjdk:8-jdk-alpine
USER 1001
ADD target/first-docker-image-maven.jar first-docker-image-maven.jar 
EXPOSE 8080
ENTRYPOINT ["java - jar /first-docker-image-maven.jar"]
