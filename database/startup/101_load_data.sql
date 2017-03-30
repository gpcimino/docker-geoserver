\c geoserver 

COPY glider_dora_pos (time,latitude,longitude,type) FROM '/docker-entrypoint-initdb.d/latest_dora_wp.csv' HEADER DELIMITER ',' CSV;

ALTER TABLE glider_dora_pos ADD COLUMN if not exists the_geom public.geometry;
UPDATE glider_dora_pos SET the_geom = ST_GeomFromText('POINT(' || longitude || ' ' || latitude || ')',4326);
