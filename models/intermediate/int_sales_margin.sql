SELECT * 
,CAST((quantity*purchase_price) AS INT64) as purchase_cost
,CAST((revenue-(quantity*purchase_price)) AS INT64) as margin
FROM 
{{ ref("stg_raw__sales")}}
JOIN
{{ref("stg_raw__product")}}
USING (products_id)

