-- Database: network-app

-- DROP DATABASE "network-app";

CREATE DATABASE "network-app-test"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;


-- Table: public.attendance

-- DROP TABLE public.attendance;

CREATE TABLE public.attendance
(
    contact_id integer NOT NULL,
    event_id integer NOT NULL,
    notes character varying COLLATE pg_catalog."default",
    CONSTRAINT attendance_pkey PRIMARY KEY (contact_id, event_id)
)

TABLESPACE pg_default;


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



-- Table: public.events

-- DROP TABLE public.events;

CREATE TABLE public.events
(
    event_id integer NOT NULL,
    event_date date,
    event_name character varying COLLATE pg_catalog."default" NOT NULL,
    event_location character varying COLLATE pg_catalog."default",
    CONSTRAINT events_pkey PRIMARY KEY (event_id)
)

TABLESPACE pg_default;




-- Table: public.users

-- DROP TABLE public.users;

CREATE TABLE public.users
(
    email character varying COLLATE pg_catalog."default" NOT NULL,
    first_name character varying COLLATE pg_catalog."default" NOT NULL,
    last_name character varying COLLATE pg_catalog."default" NOT NULL,
    user_id integer NOT NULL,
    password character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT users_pkey PRIMARY KEY (user_id)
)

TABLESPACE pg_default;