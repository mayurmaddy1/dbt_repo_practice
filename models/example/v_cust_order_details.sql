{{
    config(
        materialized='table',
        transient=false
    )
}}

SELECT first_name, o.status, o.order_date, paymentmethod, amount from customers c
inner join orders o on o.customer_id=c.customer_id
inner join payment p on o.order_id=p.orderid
where c.status='Y'

