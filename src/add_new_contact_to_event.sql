CREATE OR REPLACE FUNCTION add_new_contact_to_event(
	user_id int,
	first_name varchar,
	last_name varchar,
	email varchar,
	phone_no varchar,
	linkedin varchar,
	title varchar,
	contact_notes varchar,
	event_id int,
	new_contact_notes varchar
	)
RETURNS SETOF contacts
LANGUAGE plpgsql
AS $$
DECLARE
	new_contact_id integer;
BEGIN  
	INSERT INTO contacts (user_id, first_name, last_name, email, phone_no, linkedin, title, notes)
	VALUES (user_id, first_name, last_name, email, phone_no, linkedin, title, contact_notes);
	SELECT currval(pg_get_serial_sequence('contacts','contact_id')) INTO new_contact_id;

	INSERT INTO attendance 
	VALUES (new_contact_id, event_id, new_contact_notes);
	
	RETURN QUERY (SELECT * FROM contacts WHERE contact_id = new_contact_id);
END;
$$;

