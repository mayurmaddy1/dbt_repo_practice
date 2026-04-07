{{
    config(
        materialized='ephemeral'
    )
}}
WITH DRIVERS1 as
( SELECT driverref, code, nationality from DRIVERS)
SELECT * FROM DRIVERS1