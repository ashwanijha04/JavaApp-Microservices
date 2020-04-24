FROM alpine

WORKDIR /root/helloWorld

COPY app.jar /root/helloWorld/app.jar

# Install JDK

RUN apk add openjdk8

RUN which java

#ENV JAVA_HOME /usr/bin

#ENV PATH $PATH:$JAVA_HOME/bin

ENV TEST=/root/helloWorld

CMD java -jar $TEST/app.jar
