FROM openjdk:8

VOLUME /tmp
ADD config config
ADD nanobe.jar nanobe.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/nanobe.jar"]
