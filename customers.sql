SELECT
  o.customer_id,
  c.name,
  email,
  min(o.created_at) as first_order_at,
  COUNT(o.id) AS number_of_orders
FROM
  analytics-engineers-club.coffee_shop.orders o
JOIN
  analytics-engineers-club.coffee_shop.customers c
ON
  o.customer_id = c.id
group by 1,2,3
order by 4 asc 
limit 5
