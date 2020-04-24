FROM alpine

WORKDIR /root/helloWorld

COPY app.jar /root/app.jar

# Install JDK

RUN apk add openjdk8

RUN which java

ENV JAVA_HOME /usr/bin

ENV PATH $PATH:$JAVA_HOME/bin

ENV TEST=/root

CMD java -jar $TEST/app.jar
