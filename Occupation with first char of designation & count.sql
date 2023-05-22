--Create a table

CREATE TABLE IF NOT EXISTS OCCUPATION (NAME STRING,OCCUPATION STRING) USING DELTA LOCATION 'dbfs:/user/hive/warehouse/occupation'

--insert the values into table

INSERT INTO OCCUPATION (name, occupation) VALUES ('John Smith', 'Doctor');
INSERT INTO OCCUPATION (name, occupation) VALUES ('Sarah Lee', 'Professor');
INSERT INTO OCCUPATION (name, occupation) VALUES ('Michael Brown', 'Doctor');
INSERT INTO OCCUPATION (name, occupation) VALUES ('Karen Lee', 'Professor');
INSERT INTO OCCUPATION (name, occupation) VALUES ('David Kim', 'Doctor');
INSERT INTO OCCUPATION (name, occupation) VALUES ('Emily Chen', 'Professor');
INSERT INTO OCCUPATION (name, occupation) VALUES ('Matthew Lee', 'Doctor');
INSERT INTO OCCUPATION (name, occupation) VALUES ('Rachel Kim', 'Professor');
INSERT INTO OCCUPATION (name, occupation) VALUES ('Jason Park', 'Doctor');
INSERT INTO OCCUPATION (name, occupation) VALUES ('Linda Wong', 'Professor');
INSERT INTO OCCUPATION (name, occupation) VALUES ('Linda Wong', 'Professor');
INSERT INTO OCCUPATION (name, occupation) VALUES ('Linda Wong', 'Professor');
INSERT INTO OCCUPATION (name, occupation) VALUES ('Linda Wong', 'Professor');
INSERT INTO OCCUPATION (name, occupation) VALUES ('Linda Wong', 'Professor');
INSERT INTO OCCUPATION (name, occupation) VALUES ('Linda Wong', 'teacher');
INSERT INTO OCCUPATION (name, occupation) VALUES ('Wong', 'Actor');
INSERT INTO OCCUPATION (name, occupation) VALUES ('Wong', 'Actor');



--SQL logic

select concat(name, "(", upper(left(occupation, 1)), ")") as output
from OCCUPATION
union
select concat("There are a total of ", count(occupation), " ", lower(occupation), "s.") as output
from OCCUPATION
group by occupation

o/p:
 
Rachel Kim(P)
Linda Wong(P)
Michael Brown(D)
Emily Chen(P)
Karen Lee(P)
Sarah Lee(P)
Matthew Lee(D)
Jason Park(D)
David Kim(D)
Wong(A)
There are a total of 10 doctors.
There are a total of 4 actors.
There are a total of 2 teachers.
There are a total of 16 professors.
