CREATE OR REPLACE FUNCTION add_new_event(
	user_id int,
	first_name varchar,
	last_name varchar,
	email varchar,
	phone_no varchar,
	linkedin varchar,
	title varchar,
	notes varchar,
	event_id int,
	new_contact_notes varchar
	)
RETURNS VOID
LANGUAGE plpgsql
AS $$
DECLARE
	new_contact_id integer;
BEGIN  
	INSERT INTO contacts (user_id, first_name, last_name, email, phone_no, linkedin, title, notes)
	VALUES (user_id, first_name, last_name, email, phone_no, linkedin, title, notes);
	SELECT currval(pg_get_serial_sequence('contacts','contact_id')) INTO new_contact_id;

	INSERT INTO attendance 
	VALUES (new_contact_id, event_id, new_contact_notes);
END;
$$;

