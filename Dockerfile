FROM openjdk:8

VOLUME /tmp
ADD nanobe.jar nanobe.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/nanobe.jar"]
