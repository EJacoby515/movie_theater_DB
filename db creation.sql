create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(30),
	last_Name  VARCHAR(50),
	email VARCHAR(100),
	phone_numb NUMERIC
);

create table concessions(
	concessions_id SERIAL primary key,
	item_name VARCHAR(50),
	item_price INTEGER,
	foreign key(customer_id) references customer(customer_id)
);


create table  movies(
	movie_id SERIAL  primary key,
	title VARCHAR(50),
	theater_num  numeric,
	foreign key (customer_id) references customer(customer_id)
	
);

create table tickets(
	ticket_id SERIAL primary key,
	ticket_cnt numeric,
	ticket_price numeric,
	seat_numb VARCHAR(5),
	showtime VARCHAR(8),
	foreign key (customer_id) references customer(customer_id),
	foreign key (movie_id) references movie(movie_id)
);


create table concession_sales(
	con_sale_id  SERIAL primary key,
	qunatity INTEGER,
	foreign key (concession_id) references concessions(concession_id)
);

create tabele transaction(
	transaction_id SERIAL primary key,
	date_ VARCHAR(10),
	time_ VARCHAR(10),
	foreign key (customer_id) references customer(customer_id)
	foreign key (con_sale_id) references concession_sales(con_sale_id)
	foreign key (concession_id) references concessions(concessions_id)
);

