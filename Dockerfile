FROM java:8

EXPOSE 8080

ADD target/first-docker-image-maven.jar first-docker-image-maven.jar

ENTRYPOINT ["java","-jar","first-docker-image-maven.jar"]