FROM openjdk:17-alpine
WORKDIR /
RUN mkdir -p /usr/local/debezium-server-1.6
# ENV JAVA_OPTS="$JAVA_OPTS -javaagent:/usr/local/newrelic/newrelic.jar"
ADD ./debezium_dockerfile/debezium-server-1.6/ /usr/local/debezium-server-1.6/

EXPOSE 8080
WORKDIR /usr/local/debezium-server-1.6
CMD java -cp "debezium-server-dist-1.6.0.Final-runner.jar:conf:lib/*" io.debezium.server.Main
#ENTRYPOINT ["java","-cp", "'/usr/local/debezium-server/debezium-server-dist-1.6.0.Final-runner.jar:conf:lib/*'", "io.debezium.server.Main"]