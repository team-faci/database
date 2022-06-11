-- Table: public.contacts

-- DROP TABLE public.contacts;

CREATE TABLE public.contacts
(
    contact_id integer NOT NULL,
    user_id integer NOT NULL,
    first_name character varying COLLATE pg_catalog."default" NOT NULL,
    last_name character varying COLLATE pg_catalog."default" NOT NULL,
    email character varying COLLATE pg_catalog."default",
    phone_no character varying COLLATE pg_catalog."default",
    linkedin character varying COLLATE pg_catalog."default",
    title character varying COLLATE pg_catalog."default",
    notes character varying COLLATE pg_catalog."default",
    CONSTRAINT contacts_pkey PRIMARY KEY (contact_id)
)

TABLESPACE pg_default;