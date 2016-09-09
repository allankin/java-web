FROM tomcat:8.5
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN sed -i 's/JAVA_OPTS="$JAVA_OPTS $JSSE_OPTS"/JAVA_OPTS="$JAVA_OPTS $JSSE_OPTS -Duser.timezone=GMT+08"/g' /usr/local/tomcat/bin/catalina.sh
RUN cd /usr/local/tomcat/webapps/ROOT/ && rm -rf *
ADD target/java-web.war /usr/local/tomcat/webapps/ROOT
RUN cd /usr/local/tomcat/webapps/ROOT/ && unzip -q java-web.war