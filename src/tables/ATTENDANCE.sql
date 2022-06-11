-- Table: public.attendance

-- DROP TABLE public.attendance;

CREATE TABLE IF NOT EXISTS public.attendance
(
    contact_id integer NOT NULL,
    event_id integer NOT NULL,
    notes character varying COLLATE pg_catalog."default",
    CONSTRAINT attendance_pkey PRIMARY KEY (contact_id, event_id)
)
