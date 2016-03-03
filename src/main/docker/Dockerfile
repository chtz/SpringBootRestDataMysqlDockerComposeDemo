FROM chtz/minimal-java
VOLUME /tmp
ADD restdatademo-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
