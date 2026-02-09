-- Table: public.employee

-- DROP TABLE IF EXISTS public.employee;

CREATE TABLE IF NOT EXISTS public.employee
(
    id integer,
    name character varying(50) COLLATE pg_catalog."default",
    birthday date,
    email character varying(100) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.employee
    OWNER to postgres;