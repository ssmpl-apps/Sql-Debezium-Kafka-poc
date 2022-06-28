FROM openjdk:17-alpine
WORKDIR /
RUN mkdir -p /usr/local/debezium-server-1.9
# ENV JAVA_OPTS="$JAVA_OPTS -javaagent:/usr/local/newrelic/newrelic.jar"
ADD ./debezium-server-1.9/ /usr/local/debezium-server-1.9/

EXPOSE 8080
WORKDIR /usr/local/debezium-server-1.9
CMD java -cp "debezium-server-dist-1.9.3.Final-runner.jar:conf:lib/*" io.debezium.server.Main
#ENTRYPOINT ["java","-cp", "'/usr/local/debezium-server-1.9/debezium-server-1.9-dist-1.6.0.Final-runner.jar:conf:lib/*'", "io.debezium.server.Main"]

# Copy debezium-server-1.9 if redis offset storage config needed and debezium-sesrver-1.6 (older version) otherwise