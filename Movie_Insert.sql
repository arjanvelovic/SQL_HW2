insert into customer(
	first_name,
	last_name
) values 
('Arjan','Velovic'),
('John', 'Doe'),
('Ronald', 'McDonald');

alter table movie
alter column year_ type smallint;

insert into movie(
	movie_name,
	year_,
	auditorium,
	run_time
) values
('Barbie Movie', 2023, 1, '2 hours 20 minutes'),
('Parasite', 2019, 2, '2 hours 12 minutes'),
('Titanic', 1997, 2, '3 hours 14 minutes');

delete from movie where movie_id = 2;

insert into concessions(
	item_name,
	item_price 
) values
('popcorn', 20),
('soda', 3),
('m&ms',4);


insert into employee (
	first_name,
	last_name,
	position_
) values
('Brad', 'Pitt', 'cashier'),
('Chris', 'Evans', 'security'),
('Emma', 'Watson', 'manager');

insert into ticket(
	price,
	customer_id,
	movie_id,
	employee_id
) values
(15, 1, 1, 1),
(20, 2, 3, 1),
(0, 3, 4, 1);

alter table purchase
drop column item_price;

insert into purchase(
	customer_id,
	employee_id,
	concession_id
) values
(1, 3, 1),
(1, 3, 2),
(3, 3, 3);
