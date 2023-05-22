--Create a table

CREATE TABLE items(Productid int,ProductName string,Product_Type string,Availability string) --location 'dbfs:/FileStore/tables';

--insert the values into table

INSERT INTO items (Productid,ProductName,Product_Type,Availability) values ('1','Yippee','Food','Y');
INSERT INTO items (Productid,ProductName,Product_Type,Availability) values ('2','Maggie','Food','Y');
INSERT INTO items (Productid,ProductName,Product_Type,Availability) values ('3','T-shirt','Cloth','Y');
INSERT INTO items (Productid,ProductName,Product_Type,Availability) values ('4','Jeans','Cloth','Y');
INSERT INTO items (Productid,ProductName,Product_Type,Availability) values ('5','Moblie','Electronics','N');
INSERT INTO items (Productid,ProductName,Product_Type,Availability) values ('6','Tv','Electronics','N');
INSERT INTO items (Productid,ProductName,Product_Type,Availability) values ('7','Alexa','Electronics','Y');



--SQL logic

select Product_Type,sum(AvailableCount) as AvailableCount ,sum(Non_AvailableCount) as Non_AvailableCount from
	(
	select Product_Type,case when Availability='Y' then '1' ELSE '0' end as AvailableCount, case when Availability='N' then '1' ELSE '0' END as Non_AvailableCount from items --group by Product_Type,Availability
     )
	group by Product_Type--,AvailableCount,Non_AvailableCount

o/p:
 
Product_Type
AvailableCount
Non_AvailableCount
Electronics
1
2
Cloth
2
0
Food
2
0


