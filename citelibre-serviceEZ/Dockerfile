ARG site=site-citelibre-serviceEZ-1.0.9

# build the site and assemble the webapp
FROM lutece/builder as builder

WORKDIR /app
ADD pom.xml /app/pom.xml
ADD src /app/src

#RUN mvn -Dmaven.artifact.threads=30 -e -U lutece:site-assembly -Pdev
RUN --mount=type=cache,target=/root/.m2,rw mvn -Dmaven.artifact.threads=30 -e -U lutece:site-assembly -Pdev
RUN cd target && mv $(ls *.war) ${site}.war

FROM tomcat:9.0-jdk11

RUN apt update && apt install -y haproxy

ARG tomcat=/usr/local/tomcat
WORKDIR ${tomcat}
COPY --from=builder /app/target/${site}.war webapps
COPY haproxy.cfg /etc/haproxy/haproxy.cfg

RUN cd webapps && mkdir serviceEZ &&  mv ${site}.war serviceEZ/serviceEZ.war  && cd serviceEZ && jar xvf serviceEZ.war && rm serviceEZ.war

COPY webapp/WEB-INF webapps/serviceEZ/WEB-INF/

COPY entrypoint.sh /entrypoint.sh

COPY wait /wait

RUN chmod +x /wait 
RUN chmod +x /entrypoint.sh
RUN apt -y install haproxy
ENV LUTECE_DB_HOST=
ENV LUTECE_DB_PORT=
ENV LUTECE_DB_NAME=
ENV LUTECE_DB_USER=
ENV LUTECE_DB_PWD=
ENV LUTECE_MAIL_HOST=
ENV LUTECE_MAIL_PORT=
ENV LUTECE_MAIL_USER=
ENV LUTECE_MAIL_PWD=
ENV LUTECE_INTERNAL_KEYCLOAK=

ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
