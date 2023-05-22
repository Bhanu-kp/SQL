--Create a table

Create table if not exists score(name string, subject string, score int);

--insert the values into table

INSERT INTO score (name, subject, score)
VALUES
  ('John', 'Math', 95),
  ('John', 'Science', 87),
  ('John', 'History', 92),
  ('Alice', 'Math', 88),
  ('Alice', 'Science', 91),
  ('Alice', 'History', 90),
  ('David', 'Math', 83),
  ('David', 'Science', 79),
  ('David', 'History', 85);



--SQL logic

SELECT * FROM (SELECT NAME,SUBJECT,SCORE,DENSE_RANK() OVER (ORDER BY SCORE DESC) AS TOPPERS FROM SCORE)_DATA WHERE TOPPERS<'4'

o/p:
 
NAME
SUBJECT
SCORE
TOPPERS
John
Math
95
1
John
History
92
2
Alice
Science
91
3
