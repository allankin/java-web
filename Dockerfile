FROM tomcat:8.5
ADD target/java-web.war /usr/local/tomcat/webapps/ROOT
RUN cd /usr/local/tomcat/webapps/ROOT/ && unzip -q java-web.war