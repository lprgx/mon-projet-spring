# Image de base avec Java 17
FROM eclipse-temurin:17-jdk-jammy

# Repertoire de travail dans le conteneur
WORKDIR /app

# Copier le jar genere par Maven
COPY target/*.jar app.jar

# Port exposé par Spring Boot
EXPOSE 8080

# Commande de demarrage
ENTRYPOINT ["java", "-jar", "/app/app.jar"]