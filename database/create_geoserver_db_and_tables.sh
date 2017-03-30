#!/bin/bash
psql -U postgres -h localhost << EOF
CREATE DATABASE geoserver
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'en_US.utf8'
       LC_CTYPE = 'en_US.utf8'
       CONNECTION LIMIT = -1;
       
EOF

psql -U postgres -h localhost -d geoserver << EOF

CREATE EXTENSION postgis;       
 
EOF
