FROM eclipse-temurin:17-jdk-noble
WORKDIR /app
COPY ./Largest.java .
RUN javac Largest.java
CMD ["java", "Largest"]
