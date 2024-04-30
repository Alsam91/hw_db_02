CREATE TABLE IF NOT EXISTS departments (
	id serial PRIMARY KEY, 
	name varchar NOT NULL,
);

CREATE TABLE IF NOT EXISTS employees (
	id serial PRIMARY KEY, 
	name varchar NOT NULL,
	department_id integer REFERENCES departments(id),
	chief_id integer NULL,
	FOREIGN KEY (chief_id) REFERENCES employees(id)
);
