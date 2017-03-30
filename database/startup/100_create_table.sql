\c geoserver

CREATE TABLE public.glider_dora_pos
(
  "time" timestamp without time zone,
  latitude double precision,
  longitude double precision,
  type character varying,
  the_geom geometry
)
WITH (
  OIDS=FALSE
);

ALTER TABLE public.glider_dora_pos
  OWNER TO postgres;
