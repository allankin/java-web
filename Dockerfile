FROM tomcat:8.5
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN cd /usr/local/tomcat/webapps/ROOT/ && rm -rf *
ADD target/java-web.war /usr/local/tomcat/webapps/ROOT
RUN cd /usr/local/tomcat/webapps/ROOT/ && unzip -q java-web.war