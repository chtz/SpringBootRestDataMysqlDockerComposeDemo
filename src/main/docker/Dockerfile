FROM alpine:3.3
VOLUME /tmp
RUN apk add --update openjdk8-jre && rm -rf /var/cache/apk/*
ADD target/restdatademo-0.0.1-SNAPSHOT.jar app.jar
ADD src/main/docker/app.sh app.sh
CMD /app.sh