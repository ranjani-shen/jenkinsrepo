FROM adoptopenjdk/openjdk11:alpine-jre

VOLUME /tmp

COPY target/HelloWorld-0.0.1-SNAPSHOT.jar target/HelloWorld-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/target/HelloWorld-0.0.1-SNAPSHOT.jar"]
