FROM tomcat:8.5.96-jdk8-temurin

# Remove default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy the WAR from dist folder and rename to ROOT.war for Tomcat autodeploy
COPY ./dist/PetShop-web.war /usr/local/tomcat/webapps/ROOT.war
