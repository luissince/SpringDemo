FROM openjdk:8

COPY . /usr/src/myapp

WORKDIR /usr/src/myapp

RUN chmod -R 777 ./mvnw

RUN ./mvnw install

RUN ./mvnw package

EXPOSE 8080

CMD ["java","-jar","./target/demo-0.0.1-SNAPSHOT.jar"]
