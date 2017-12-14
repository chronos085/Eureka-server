FROM openjdk:8
LABEL Description="Eureka Server" Version="0.0.1"
ADD target/Eureka-server-0.0.1-SNAPSHOT.jar service-discovery.jar
RUN bash -c 'touch /service-discovery.jar'
ENTRYPOINT ["java","-jar","service-discovery.jar"]