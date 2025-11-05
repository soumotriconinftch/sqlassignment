SELECT 
    u.id AS user_id,
    u.name AS user_name,
    o.order_id,
    o.product_name,
    o.amount
FROM 
    users u
LEFT JOIN 
    orders o 
ON 
    u.id = o.user_id;
