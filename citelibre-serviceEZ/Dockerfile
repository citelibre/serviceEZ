FROM tomcat:9.0-jdk11

RUN apt update && apt install -y haproxy

ARG site=site-citelibre-serviceEZ-1.0.9

ARG tomcat=/usr/local/tomcat
WORKDIR ${tomcat}
COPY target/${site}.war webapps
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





