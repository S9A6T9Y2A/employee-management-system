# Stage 1: Build WAR with Maven
FROM maven:3.9.1-openjdk-17 AS build
WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean package

# Stage 2: Create runtime image
FROM openjdk:17
EXPOSE 8060

COPY --from=build /app/target/spring-employee-image.war spring-employee-image.war

ENTRYPOINT ["java", "-jar", "/spring-employee-image.war"]
