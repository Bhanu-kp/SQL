--Create a table

CREATE TABLE Vehicle(Name string,Vehicle string); 

--insert the values into table

INSERT INTO Vehicle (Name, Vehicle) VALUES ('Ram', 'Bike');
INSERT INTO Vehicle (Name, Vehicle) VALUES ('Ram', 'Car');
INSERT INTO Vehicle (Name, Vehicle) VALUES ('Shiva', 'Bike');
INSERT INTO Vehicle (Name, Vehicle) VALUES ('Shiva', 'Car');
INSERT INTO Vehicle (Name, Vehicle) VALUES ('Shiva', 'Bicycle');
INSERT INTO Vehicle (Name, Vehicle) VALUES ('Shiva', 'IKE');
INSERT INTO Vehicle (Name, Vehicle) VALUES ('Shiva', 'LEON');
INSERT INTO Vehicle (Name, Vehicle) VALUES ('Shiva', 'URAB');
INSERT INTO Vehicle (Name, Vehicle) VALUES ('Shiva', 'I10');


--SQL logic

select name,vehicle_type,count(vehicle) over (partition by name)as vehicle_count from vehicles

o/p:
name
vehicle
vehicle_count
1
2
3
4
5
Ram
Bike
2
Ram
Car
2
Shiva
Bicycle
3
Shiva
Bike
3
Shiva
Car
3


