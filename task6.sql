SELECT 
    u.name AS user_name,
    o.product_name,
    o.amount
FROM 
    users u
JOIN 
    orders o ON u.id = o.user_id
WHERE 
    u.name LIKE 'A%'                   -- Users whose name starts with 'A'
    AND o.product_name NOT IN ('Mouse', 'Charger')  -- Exclude these products
ORDER BY 
    o.amount DESC;                     -- Sort highest amount first
