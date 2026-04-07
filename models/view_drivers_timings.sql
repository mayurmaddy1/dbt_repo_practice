{{
    config(
        materialized='view',
        secure = true
    )
}}


SELECT 
p.raceid ,p.driverid,p.time, p.duration,
d.driverref, d.code,d.nationality,d.number
FROM {{ source('s1', 'Circuits') }} p
INNER JOIN
DRIVERS d
WHERE p.driverid =d.driverid