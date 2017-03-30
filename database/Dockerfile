FROM mdillon/postgis:9.6
MAINTAINER Giampaolo Cimino giampaolo.cimino@cmre.nato.int


RUN apt-get update \
      && apt-get install -y vim \
      && apt-get install -y telnet 

RUN echo "alias ll='ls -l'" >> ~/.bashrc

#COPY create_geoserver_db_and_tables.sh /docker-entrypoint-initdb.d/create_geoserver_db_and_tables.sh
COPY startup/*.sql  /docker-entrypoint-initdb.d/
COPY startup/*.csv  /docker-entrypoint-initdb.d/

