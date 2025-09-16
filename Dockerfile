FROM openjdk:17
EXPOSE 8060
ADD target/spring-employee-image.war spring-employee-image.war
ENTRYPOINT ["java","-jar","/spring-employee-image.war"]