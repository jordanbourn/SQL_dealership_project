-- Salesperson data
insert into salesperson_jordan(
	salesperson_id,
	first_name,
	last_name
)VALUES(
	1,
	'Helen',
	'Ortiz'
);

insert into salesperson_jordan(salesperson_id, first_name, last_name)
VALUES(2, 'Marcus', 'Scott');

insert into salesperson_jordan(salesperson_id, first_name, last_name)
VALUES(3, 'Vinnie', 'Cevontes');

insert into salesperson_jordan(salesperson_id, first_name, last_name)
VALUES(4, 'Jesse', 'Sutten');

insert into salesperson_jordan(salesperson_id, first_name, last_name)
VALUES(5, 'Kamal', 'Franco');

-- Customer data
insert into customer_jordan(customer_id, first_name, last_name, address, billing_info)
VALUES(3, 'Macy', 'Knowles', '4562 Street PWY, Boulder, CO 80304', '1234-5678-9101-1121 123 01/24');

insert into customer_jordan(customer_id, first_name, last_name, address, billing_info)
VALUES(4, 'Adam', 'Owens', '1324 Big St, Longmont, CO 80315', '1111-2222-3333-4444 123 12/23');

insert into customer_jordan(customer_id, first_name, last_name, address, billing_info)
VALUES(5, 'Walter', 'Meyers', '6780 Somewhere Ln, Niwot, CO, 80503', '4444-3333-2222-1111 123 06/23');

-- Car data
insert into cars_jordan(serial_number, make, model, vehicle_year, for_sale, owner_id)
VALUES(100, 'JEEP', 'Grand Cherokee', 2012, 'y', 0);

insert into cars_jordan(serial_number, make, model, vehicle_year, for_sale, owner_id)
VALUES(200, 'Toyota', 'Sequoia', 2009, 'n', 3);

insert into cars_jordan(serial_number, make, model, vehicle_year, for_sale, owner_id)
VALUES(300, 'Toyota', 'Grand Highlander', 2024, 'y', 0);

insert into cars_jordan(serial_number, make, model, vehicle_year, for_sale, owner_id)
VALUES(400, 'JEEP', 'Wrangler 4Xe Sahara', 2023, 'y', 0);

insert into cars_jordan(serial_number, make, model, vehicle_year, for_sale, owner_id)
VALUES(500, 'Hyundai', 'Elantra', 2023, 'n', 3);

insert into cars_jordan(serial_number, make, model, vehicle_year, for_sale, owner_id)
VALUES(600, 'Subaru', 'Crosstrek', 2023, 'y', 0);

insert into cars_jordan(serial_number, make, model, vehicle_year, for_sale, owner_id)
VALUES(700, 'Subaru', 'Outback', 2018, 'n', 5);

insert into cars_jordan(serial_number, make, model, vehicle_year, for_sale, owner_id)
VALUES(800, 'Subaru', 'Outback', 2012, 'n', 2);

insert into cars_jordan(serial_number, make, model, vehicle_year, for_sale, owner_id)
VALUES(900, 'Toyota', 'Camry', 2017, 'n', 3);

insert into cars_jordan(serial_number, make, model, vehicle_year, for_sale, owner_id)
VALUES(101, 'Subaru', 'Forester', 2007, 'n', 1);

-- Mechanic data
insert into mechanic_jordan(mechanic_id, first_name, last_name)
VALUES(1, 'Julian', 'Russo');

insert into mechanic_jordan(mechanic_id, first_name, last_name)
VALUES(2, 'Vera', 'Woods');

insert into mechanic_jordan(mechanic_id, first_name, last_name)
VALUES(3, 'Ricky', 'Monroe');

insert into mechanic_jordan(mechanic_id, first_name, last_name)
VALUES(4, 'Jack', 'Harrell');

insert into mechanic_jordan(mechanic_id, first_name, last_name)
VALUES(5, 'Betty', 'Boop');

-- Parts data
insert into parts_jordan(part_id, part_description, purchase_price, retail_price, in_stock)
VALUES(101, 'glowplug', 24.00, 58.00, 'y');

insert into parts_jordan(part_id, part_description, purchase_price, retail_price, in_stock)
VALUES(102, 'fan belt', 38.00, 80.00, 'y');

insert into parts_jordan(part_id, part_description, purchase_price, retail_price, in_stock)
VALUES(103, 'windshield, subaru, outback', 50.00, 100.00, 'n');

insert into parts_jordan(part_id, part_description, purchase_price, retail_price, in_stock)
VALUES(104, 'windshield sealant', 30.00, 65.00, 'y');

insert into parts_jordan(part_id, part_description, purchase_price, retail_price, in_stock)
VALUES(105, 'oil full synthetic', 9.67, 22.43, 'y');

-- Services data
insert into service_jordan(service_id, service_name, hourly_rate)
VALUES(1, 'oil change-full synthetic', 30.00);

insert into service_jordan(service_id, service_name, hourly_rate)
VALUES(2, 'windshield replacement', 80.00);

insert into service_jordan(service_id, service_name, hourly_rate)
VALUES(3, 'windshield sealant repair', 80.00);

insert into service_jordan(service_id, service_name, hourly_rate)
VALUES(4, 'alignment', 110.00);

insert into service_jordan(service_id, service_name, hourly_rate)
VALUES(5, 'belt replacement', 90.00);

-- Mechanic services data
insert into mechanic_services_jordan(services_rendered, serial_number, mechanic_id, service_id)
VALUES(100, 101, '2, 5', '4, 1');

update mechanic_services_jordan
set labor_hourly = '01:00:00'
where services_rendered = 100;

insert into mechanic_services_jordan(services_rendered, serial_number, mechanic_id, service_id)
VALUES(102, 800, '3', '3');

update mechanic_services_jordan
set labor_hourly = '07:30:00'
where services_rendered = 102;

insert into mechanic_services_jordan(services_rendered, serial_number, mechanic_id, service_id)
VALUES(103, 500, '4', '4');

update mechanic_services_jordan
set labor_hourly = '01:00:00'
where services_rendered = 103;

insert into mechanic_services_jordan(services_rendered, serial_number, mechanic_id, service_id)
VALUES(104, 200, '1', '4');

update mechanic_services_jordan
set labor_hourly = '01:00:00'
where services_rendered = 104;

-- Parts Used data
insert into parts_used_jordan(parts_used_id, number_used, part_id)
VALUES(201, 1, 105);

insert into parts_used_jordan(parts_used_id, number_used, part_id)
VALUES(202, 1, 104);

-- Service Ticket data
insert into service_ticket_jordan(service_ticket_id, service_comments,serial_number, parts_used_id, services_rendered, customer_id)
VALUES(201, 'tire alignment, oil change - full synthetic', 101, 201, 100, 1);

insert into service_ticket_jordan(service_ticket_id, service_comments,serial_number, parts_used_id, services_rendered, customer_id)
VALUES(203, 'Windsheild sealant replaced', 800, 202, 102, 2);

insert into service_ticket_jordan(service_ticket_id, service_comments,serial_number, parts_used_id, services_rendered, customer_id)
VALUES(204, 'tires aligned', 500, null, 103, 3);

insert into service_ticket_jordan(service_ticket_id, service_comments,serial_number, parts_used_id, services_rendered, customer_id)
VALUES(205, 'alignment done, recommended an oil change, customer declined', 200, null, 104, 3);

--Service Record data
insert into service_record_jordan(service_record_id, customer_id, serial_number)
VALUES(1, 3, 200);

insert into service_record_jordan(service_record_id, customer_id, serial_number)
VALUES(2, 3, 500);

insert into service_record_jordan(service_record_id, customer_id, serial_number)
VALUES(3, 2, 800);

insert into service_record_jordan(service_record_id, customer_id, serial_number)
VALUES(4, 1, 101);

insert into service_record_jordan(service_record_id, customer_id, serial_number)
VALUES(5, 5, 700);

insert into service_record_jordan(service_record_id, customer_id, serial_number)
VALUES(6, 5, 900);

-- Invoice data
insert into invoice_jordan(invoice_id, amount, serial_number, salesperson_id, customer_id)
VALUES(101, 10300.00, 900, 2, 5);

insert into invoice_jordan(invoice_id, amount, serial_number, salesperson_id, customer_id)
VALUES(106, 21520, 500, 5, 3);

insert into invoice_jordan(invoice_id, amount, serial_number, salesperson_id, customer_id)
VALUES(110, 26300,700, 2, 5);

insert into invoice_jordan(invoice_id, amount, serial_number, salesperson_id, customer_id)
VALUES(112, 8443, 101, 3, 1);

select service_record_jordan.customer_id, customer_jordan.first_name, customer_jordan.last_name, service_record_jordan.serial_number, service_ticket_jordan.service_ticket_id, invoice_jordan.invoice_id
from service_record_jordan
right join customer_jordan
on service_record_jordan.customer_id = customer_jordan.customer_id
right join service_ticket_jordan
on customer_jordan.customer_id = service_ticket_jordan.customer_id
right join invoice_jordan
on service_ticket_jordan.customer_id = invoice_jordan.customer_id
order by service_record_id, customer_id, first_name, last_name, service_ticket_id desc;

select * from invoice_jordan

select * from customer_jordan
where customer_id = 5;

alter table cars_jordan
add owner_id INTEGER;

select customer_jordan.customer_id, customer_jordan.first_name, customer_jordan.last_name, cars_jordan.serial_number, cars_jordan.model, for_sale
from customer_jordan
right join service_record_jordan
on customer_jordan.customer_id = service_record_jordan.customer_id
right join cars_jordan
on service_record_jordan.serial_number = cars_jordan.serial_number;

select * from cars_jordan
order by serial_number;

update cars_jordan
set owner_id = 0
where for_sale = 'y';


