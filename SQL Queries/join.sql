SELECT * FROM PRISONERS

SELECT * FROM RECIDIVISM

SELECT * FROM OFFENSE


SELECT p."Year Released" ,p."Age",p."Release Type",p."Race",p."Sex",
o."Offense Type",o."Offense Classification",
r."Days to Return",r."Recidivism Type",r."New Offense Classification",
r."New Offense Type",
r."Return to Prison"
from PRISONERS p
INNER JOIN
OFFENSE o
on p."ID" = o."ID"
INNER JOIN
RECIDIVISM r
on p."ID" = r."ID"
;
