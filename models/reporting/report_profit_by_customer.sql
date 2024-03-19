select 
customerid,
segment,
customername,
country,
sum(orderprofit) as profit_by_customer
from
{{ ref('stg_orders') }}
group by 
customerid,
segment,
customername,
country
