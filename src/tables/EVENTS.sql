-- Table: public.events

-- DROP TABLE public.events;

CREATE TABLE IF NOT EXISTS public.events
(
    event_id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    event_date date,
    event_name character varying COLLATE pg_catalog."default" NOT NULL,
    event_location character varying COLLATE pg_catalog."default",
    user_id integer NOT NULL,
    CONSTRAINT events_pkey PRIMARY KEY (event_id),
    CONSTRAINT events_fkey FOREIGN KEY (user_id)
        REFERENCES public.users (user_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
)

TABLESPACE pg_default;
