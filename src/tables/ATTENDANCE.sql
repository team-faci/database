-- Table: public.attendance

-- DROP TABLE public.attendance;

CREATE TABLE IF NOT EXISTS public.attendance
(
    contact_id integer NOT NULL,
    event_id integer NOT NULL,
    notes character varying COLLATE pg_catalog."default",
    CONSTRAINT attendance_pkey PRIMARY KEY (contact_id, event_id),
    CONSTRAINT attendance_contacts_fkey FOREIGN KEY (contact_id)
        REFERENCES public.contacts (contact_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID,
    CONSTRAINT attendance_events_fkey FOREIGN KEY (event_id)
        REFERENCES public.events (event_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
)
