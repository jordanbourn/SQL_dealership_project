-- Salesperson table creation
create table salesperson_jordan(
	salesperson_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

-- Customer table creation 
create table customer_jordan(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);

-- Cars table creation 
create table cars_jordan(
	serial_number SERIAL primary key,
	make VARCHAR(100),
	model VARCHAR(100),
	vehicle_year NUMERIC(4),
	for_sale BOOL
);

-- Mechanic table creation
create table mechanic_jordan(
	mechanic_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

-- Services table creation 
create table service_jordan(
	service_id SERIAL primary key,
	service_name VARCHAR(100),
	hourly_rate NUMERIC(3)
);

-- Parts table creation 
create table parts_jordan(
	part_id SERIAL primary key,
	part_description VARCHAR(150),
	purchase_price NUMERIC(6,2),
	retail_price NUMERIC(6,2),
	in_stock BOOL
);

-- Parts Used table creation 
create table parts_used_jordan(
	parts_used_id SERIAL primary key,
	number_used INTEGER,
	part_id INTEGER not null,
	foreign KEY(part_id) references parts_jordan(part_id)
);

-- Invoice table creation 
create table invoice_jordan(
	invoice_id SERIAL primary key,
	invoice_date DATE default CURRENT_DATE,
	amount NUMERIC(10,2),
	serial_number INTEGER not null,
	salesperson_id INTEGER not null,
	customer_id INTEGER not null,
	foreign KEY(serial_number) references cars_jordan(serial_number),
	foreign KEY(salesperson_id) references salesperson_jordan(salesperson_id),
	foreign KEY(customer_id) references customer_jordan(customer_id)
);

-- Services Rendered table creation 
create table mechanic_services_jordan(
	services_rendered SERIAL primary key,
	labor_hourly TIME without TIME zone,
	service_id VARCHAR(100),
	mechanic_id VARCHAR(100),
	serial_number INTEGER not null,
	foreign KEY(serial_number) references cars_jordan(serial_number)
);

-- Service ticket creation
create table service_ticket_jordan(
	service_ticket_id SERIAL primary key,
	date_received DATE,
	service_comments VARCHAR(150),
	date_returned DATE,
	serial_number INTEGER not null,
	parts_used_id INTEGER,
	services_rendered INTEGER not null,
	customer_id INTEGER not null,
	foreign KEY(serial_number) references cars_jordan(serial_number),
	foreign KEY(parts_used_id) references parts_used_jordan(parts_used_id),
	foreign KEY(services_rendered) references mechanic_services_jordan(services_rendered),
	foreign KEY(customer_id) references customer_jordan(customer_id)
);

--Service record table creation 
create table service_record_jordan(
	service_record_id SERIAL primary key,
	customer_id INTEGER not null,
	serial_number INTEGER not null,
	foreign KEY(customer_id) references customer_jordan(customer_id),
	foreign KEY(serial_number) references cars_jordan(serial_number)
);

-- Adding an amount due key to service ticket
alter table service_ticket_jordan
add amount_due NUMERIC(9,2);

select * from service_ticket_jordan
order by service_ticket_id;


