
select * from employee
order by levels desc
limit 1;


select count(*) c, billing_country 
from invoice
group by billing_country 
order by c desc;


select total from invoice
order by total desc
limit 3;

select sum(total) invoice_total, billing_city
from invoice
group by billing_city
order by invoice_total desc;

select customer.customer_id, customer.first_name, customer.last_name, sum(invoice.total) total_money_spend
from customer
join invoice on customer.customer_id = invoice.customer_id
group by customer.customer_id
order by total_money_spend desc
limit 1




