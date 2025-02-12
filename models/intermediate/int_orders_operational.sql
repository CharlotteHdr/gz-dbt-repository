SELECT *
,CAST((margin + shipping_fee - logcost - ship_cost) AS numeric) AS operational_margin
FROM {{ ref('int_orders_margin') }}
JOIN 
{{ ref('stg_raw__ship') }}
USING (orders_id)
ORDER BY orders_id DESC