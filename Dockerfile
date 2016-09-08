FROM tomcat:8.5
RUN cd /usr/local/tomcat/webapps/ROOT/ \ rm -rf *
ADD target/java-web.war /usr/local/tomcat/webapps/ROOT
RUN unzip -q java-web.war