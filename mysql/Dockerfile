FROM mysql

ENV MYSQL_ROOT_PASSWORD=root

COPY dump-keycloak.sql /docker-entrypoint-initdb.d/
COPY dump-matomo.sql /docker-entrypoint-initdb.d/
COPY dump-lutece.sql /docker-entrypoint-initdb.d/
COPY dump-businessdata.sql /docker-entrypoint-initdb.d/


