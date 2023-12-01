CREATE TABLE IF NOT EXISTS public.rsc_site
(
    discovery_ptr_id integer NOT NULL,
    image character varying(100) COLLATE pg_catalog."default",
    address text COLLATE pg_catalog."default",
    postcode character varying(16) COLLATE pg_catalog."default",
    city character varying(100) COLLATE pg_catalog."default",
    country character varying(2) COLLATE pg_catalog."default",
    geometry geometry(Geometry,4326),
    parent_site_id integer,
    
    CONSTRAINT rsc_site_pkey PRIMARY KEY (discovery_ptr_id),
    CONSTRAINT rsc_site_discovery_ptr_id_8a616e39_fk_observing FOREIGN KEY (discovery_ptr_id)
        REFERENCES public.observingsystem_discovery (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT rsc_site_parent_site_id_1537ddd4_fk_rsc_site_discovery_ptr_id FOREIGN KEY (parent_site_id)
        REFERENCES public.rsc_site (discovery_ptr_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED
)
