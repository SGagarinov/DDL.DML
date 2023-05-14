create table PERSONS (
	name varchar(255),
	surname varchar(255),
	age int,
	phone_number varchar(20),
	city_of_living varchar(20),
	CONSTRAINT pkey PRIMARY KEY(name, surname, age),
	CONSTRAINT check_age CHECK (age > 0 AND age < 150)
)

insert into persons (name, surname, age, phone_number, city_of_living)
select md5((5234*random()*1000)::text), 
	   md5((2432*random()*500)::text), 
	   random()*100, 
	   null, 
	   'Moscow'
from generate_series(1, 100)

insert into persons (name, surname, age, phone_number, city_of_living)
select md5((5234*random()*1000)::text), 
	   md5((2432*random()*500)::text), 
	   random()*100, 
	   null, 
	   substring(md5((4632*random()*10)::text), 20)
from generate_series(1, 100)