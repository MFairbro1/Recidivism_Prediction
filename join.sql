SELECT * FROM PRISONERS

SELECT * FROM RECIDIVISM

SELECT * FROM OFFENSE


SELECT p."Year Released" ,p."Age",
o."Offense Type"
from PRISONERS p
INNER JOIN
OFFENSE o
on p."ID" = o."ID"
where o."Offense Type" != 'Other';
