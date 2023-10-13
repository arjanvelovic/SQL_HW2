
create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

create table movie (
	movie_id SERIAL primary key,
	movie_name VARCHAR(100),
	year_ INTEGER,
	auditorium INTEGER,
	start_time DATE default CURRENT_DATE,
	run_time interval
);


create table conessions(
	concession_id SERIAL primary key,
	item_name VARCHAR(100),
	price MONEY unique
);

create table employee (
	employee_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	position_ VARCHAR(100)
);

create table ticket (
	ticket_id SERIAL primary key,
	price MONEY,
	purchase_time DATE default CURRENT_DATE,
	customer_id INTEGER not null,
	movie_id INTEGER not null,
	employee_id INTEGER not null,
	foreign key(customer_id) references customer(customer_id),
	foreign key(movie_id) references movie(movie_id),
	foreign key(employee_id) references employee(employee_id)
);

ALTER TABLE conessions
RENAME TO concessions;

alter table concessions
rename column price to item_price;

alter table concessions
add unique (item_price)

create table purchase (
	purchase_id SERIAL primary key,
	purchase_time DATE default CURRENT_DATE,
	customer_id INTEGER not null,
	employee_id INTEGER not null,
	concession_id INTEGER not null,
	item_price MONEY not null,
	foreign key(customer_id) references customer(customer_id),
	foreign key(employee_id) references employee(employee_id),
	foreign key(concession_id) references concessions(concession_id),
	foreign key(item_price) references concessions(item_price)
);


