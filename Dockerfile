FROM maven:3.6.3-jdk-8-slim AS stage1
WORKDIR /home/app
COPY . /home/app/
RUN mvn -f /home/app/pom.xml clean package


# create an Image
FROM openjdk:8-jdk-alpine
EXPOSE 8080
COPY --from=stage1 /home/app/target/first-docker-image-maven.jar first-docker-image-maven.jar 
ENTRYPOINT ["sh","-c", "java", "-jar", "first-docker-image-maven.jar"]
