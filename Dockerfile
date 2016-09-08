FROM tomcat:8.5
ADD target/java-web.war /usr/local/tomcat/webapps/ROOT
RUN cd /usr/local/tomcat/webapps/ROOT/ \
	&& rm -rf * \
	&& unzip -q java-web.war