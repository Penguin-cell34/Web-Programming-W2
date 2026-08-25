# ============================================
# Stage 1 - Build
# ============================================

FROM maven:3.9-eclipse-temurin-17 AS build

WORKDIR /app

COPY pom.xml .

RUN mvn dependency:go-offline

COPY src ./src

RUN mvn clean package -DskipTests


# ============================================
# Stage 2 - Tomcat
# ============================================

FROM tomcat:11.0-jdk17-temurin-jammy

WORKDIR /usr/local/tomcat

# Remove default Tomcat applications
RUN rm -rf webapps/*

# Copy WAR and deploy as ROOT application
COPY --from=build /app/target/*.war webapps/ROOT.war

# Render supplies PORT at runtime
# Default is 8080 for local Docker testing
EXPOSE 8080

CMD ["sh", "-c", "sed -i \"s/port=\\\"8080\\\"/port=\\\"${PORT:-8080}\\\"/\" /usr/local/tomcat/conf/server.xml && catalina.sh run"]
