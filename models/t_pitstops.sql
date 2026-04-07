{{
    config(
        materialized='ephemeral'
    )
}}
with PITSTOPS1 as
(select raceid , driverid ,time from PITSTOPS)
SELECT * FROM PITSTOPS1