
SELECT 
p.raceid ,p.driverid,p.time, p.duration,
d.driverref, d.code,d.nationality,d.number
FROM PITSTOPS p
INNER JOIN
DRIVERS d
WHERE p.driverid =d.driverid