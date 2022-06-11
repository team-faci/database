-- Table: public.events

-- DROP TABLE public.events;

CREATE TABLE IF NOT EXISTS public.events
(
    event_id integer NOT NULL,
    event_date date,
    event_name character varying COLLATE pg_catalog."default" NOT NULL,
    event_location character varying COLLATE pg_catalog."default",
    CONSTRAINT events_pkey PRIMARY KEY (event_id)
)

TABLESPACE pg_default;
