SELECT * FROM PRISONERS

SELECT * FROM RECIDIVISM

SELECT * FROM OFFENSE


SELECT p."Year Released" ,p."Age",p."Release Type",p."Race",p."Sex",
o."Offense Type",o."Offense Classification",o."Offense Subtype",
r."Days to Return",r."Recidivism Type",r."New Offense Classification",
r."New Offense Type",r."New Offense Sub Type",r."Target Population",
r."Return to Prison"
from PRISONERS p
INNER JOIN
OFFENSE o
on p."ID" = o."ID"
INNER JOIN
RECIDIVISM r
on p."ID" = r."ID"
where o."Offense Type" != 'Other';
