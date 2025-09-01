FROM tomcat:9.0.85-jdk17-temurin

# Remove default webapps to keep the image clean
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the webapps directory
COPY target/ebook.war /usr/local/tomcat/webapps/ROOT.war

# Tomcat starts automatically, no need to define ENTRYPOINT or CMD
