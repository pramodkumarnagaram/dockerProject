# create an Image
FROM openjdk:8-jdk-alpine
RUN mkdir /app
WORKDIR /app
USER 1001
ADD target/first-docker-image-maven.jar /app/first-docker-image-maven.jar 
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app/first-docker-image-maven.jar"]
