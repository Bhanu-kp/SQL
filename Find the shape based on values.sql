--Create a table

CREATE TABLE triangle (A int,B int, C int);


--insert the values into table

INSERT INTO triangle (A,B,C) VALUES('20','20','23');
INSERT INTO triangle (A,B,C) VALUES('20','20','20');
INSERT INTO triangle (A,B,C) VALUES('20','21','22');
INSERT INTO triangle (A,B,C) VALUES('13','14','30');

--SQL logic

SELECT CASE WHEN ((A=B) AND (A=C) AND (B=C)) THEN 'Equilateral' 
WHEN (A=B and A!=C and B!=C) or (A=C AND A!=B AND C!=B) OR (B=C AND A!=B AND A!=C)THEN 'Isosceles' 
WHEN(A+B)<C OR (A+C)<B OR (B+C)<A THEN 'Not A Triangle' 
ELSE 'Scalene' END AS COL FROM triangle;

o/p:
COL
Isosceles
Equilateral
Scalene
Not A Triangle
