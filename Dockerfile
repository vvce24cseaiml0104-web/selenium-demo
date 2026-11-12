
FROM maven:3.9.9-eclipse-temurin-17

WORKDIR /app

COPY pom.xml .

COPY src ./src

COPY testng.xml .

COPY webpage ./webpage

RUN mvn clean test
