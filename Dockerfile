FROM openjdk:8-jdk-oracle

WORKDIR /app

#Copy Conf
COPY conf/application.properties /app/application.propertie
COPY conf/start.sh /app/start.sh

RUN chmod +x /app/start.sh

#Copy Application
COPY bin/springboot.jar /app/springboot.jar

ENTRYPOINT ["/app/start.sh","springboot"]
