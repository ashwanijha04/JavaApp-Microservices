FROM alpine

WORKDIR /root/helloWorld

COPY app.jar /root/app.jar

# Install JDK

RUN apk add openjdk8

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk

ENV PATH $PATH:$JAVA_HOME/bin

RUN java -jar app.jar

