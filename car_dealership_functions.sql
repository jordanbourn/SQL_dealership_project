-- Function to create a new customer
create or replace function new_customer(_customer_id INTEGER,_first_name VARCHAR,_last_name VARCHAR,_address VARCHAR,_billing_info VARCHAR)
returns VOID
as $MAIN$
begin
	insert into customer_jordan(customer_id, first_name, last_name, address, billing_info)
	VALUES(_customer_id,_first_name,_last_name,_address,_billing_info);
end;
$MAIN$
language plpgsql;

select new_customer(6, 'Augie', 'Seebohm', '4425 Colorado Dr, Westminister, CO 80031', '5555-4444-3333-2222-1111 321 03/25');

select * from customer_jordan

-- Function to add a new vehicle to cars table
create or replace function new_vehicle(_serial_num INTEGER,_make VARCHAR,_model VARCHAR,_vehicle_year numeric,_for_sale BOOL)
returns VOID
as $MAIN$
begin
	insert into cars_jordan(serial_number, make, model, vehicle_year, for_sale)
	VALUES(_serial_num,_make,_model,_vehicle_year,_for_sale);
end;
$MAIN$
language plpgsql;

select new_vehicle(901, 'Subaru', 'Crosstrek', 2024, 'y');

select * from cars_jordan

-- A dealership id to show which cars belong to the dealership
select new_customer(0, 'DEALERSHIP', 'SELF', '345 Dealership ln, Westminister, CO 80031', NULL);


