
with PITSTOPS1 as
(select * from {{ ref('t_pitstops') }}
),

DRIVERS1 as( 
    SELECT * from {{ ref('t_drivers') }}
    ),

final as (
select PITSTOPS.raceid,PITSTOPS.driverid, PITSTOPS.time,
 DRIVERS.driverref,   DRIVERS.code , DRIVERS.nationality
 FROM PITSTOPS LEFT JOIN DRIVERS 
 ON PITSTOPS.DRIVERID = DRIVERS.DRIVERID)
 
 SELECT * FROM FINAL