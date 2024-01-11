use travego;

select * from passenger;

-- a. How many female passengers traveled a minimum distance of 600 KMs? 
select count(*) Female_passengers from passenger 
where gender = 'F' and distance > 600;

-- b. Write a query to display the passenger details whose travel distance is greater than 500 and who are traveling in a sleeper bus.
select * from passenger
where distance>500 and Bus_Type = 'Sleeper';

-- c. Select passenger names whose names start with the character 'S'.
select * from passenger
where Passenger_name like 'S%';

-- d. Calculate the price charged for each passenger, displaying the Passenger name, Boarding City, Destination City, Bus type, and Price in the output.
select pa.passenger_name,pa.boarding_city,pa.destination_city,pa.bus_type,pr.price
 from passenger pa
join price pr on pa.passenger_id = pr.id;

-- e.What are the passenger name(s) and the ticket price for those who traveled 1000 KMs Sitting in a bus?
select pa.passenger_name,pr.price from passenger pa 
join price pr
on pa.passenger_id=pr.id
where pa.distance <= 1000 and pa.bus_type='Sitting';


-- f.What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to Panaji? 

select pa.passenger_name,pr.price
from passenger pa join price pr 
on pa.distance=pr.distance and pa.bus_type=pr.bus_type 
where pa.passenger_name='Pallavi' and pa.boarding_city='Panaji' and pa.destination_city='Bengaluru';

-- g.Alter the column category with the value "Non-AC" where the Bus_Type is sleeper 
update passenger set category="Non-AC" where bus_type = "Sleeper";
select * from passenger;

-- h.Delete an entry from the table where the passenger name is Piyush and commit this change in the database
delete from passenger where passenger_name="Piyush";
commit;

-- i.Truncate the table passenger and comment on the number of rows in the table 
truncate table passenger;


-- j.Delete the table passenger from the database.
drop table passenger;

select * from passenger;







