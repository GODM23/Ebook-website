FROM tomcat:9-jdk17-temporal

# Clean default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR to the webapps directory
COPY target/ebook.war /usr/local/tomcat/webapps/ROOT.war

# Tomcat runs by default on container start
