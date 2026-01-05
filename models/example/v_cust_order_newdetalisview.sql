{{
    config(
        materialized='table'
    )
}}
select first_name,o.status,o.order_date,paymentmethod,amount from SNOWFLAKE_LEARNING_DB.MAYURROSH_LOAD_SAMPLE_DATA_FROM_S3.customers c 
inner join SNOWFLAKE_LEARNING_DB.MAYURROSH_LOAD_SAMPLE_DATA_FROM_S3.orders o  on o.customer_id=c.customer_id
inner join SNOWFLAKE_LEARNING_DB.MAYURROSH_LOAD_SAMPLE_DATA_FROM_S3.payment p  on o.order_id=p.orderid
where c.status='Y'