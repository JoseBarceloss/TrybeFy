SELECT 
    p.name AS "Plano",
    COUNT(u.id) AS "Quantidade de usuários"
FROM 
    plans p
LEFT JOIN 
    users u ON p.id = u.plan_id
GROUP BY 
    p.name
ORDER BY 
    p.name ASC;
