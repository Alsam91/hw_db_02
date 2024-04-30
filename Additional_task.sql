CREATE TABLE IF NOT EXISTS employees (
	id serial PRIMARY KEY, 
	name varchar NOT NULL,
	department varchar,
	chief_id integer NULL,
	FOREIGN KEY (chief_id) REFERENCES employees(id)
);
