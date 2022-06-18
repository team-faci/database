-- Table: public.contacts

-- DROP TABLE public.contacts;

CREATE TABLE IF NOT EXISTS public.contacts
(
    contact_id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    user_id integer NOT NULL,
    first_name character varying COLLATE pg_catalog."default" NOT NULL,
    last_name character varying COLLATE pg_catalog."default" NOT NULL,
    email character varying COLLATE pg_catalog."default",
    phone_no character varying COLLATE pg_catalog."default",
    linkedin character varying COLLATE pg_catalog."default",
    title character varying COLLATE pg_catalog."default",
    notes character varying COLLATE pg_catalog."default",
    CONSTRAINT contacts_pkey PRIMARY KEY (contact_id),
    CONSTRAINT contacts_fkey FOREIGN KEY (user_id)
        REFERENCES public.users (user_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
)

TABLESPACE pg_default;
