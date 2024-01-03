SELECT E.name 
FROM Employee AS E
WHERE E.id IN ( 
    SELECT managerId 
    FROM Employee
    GROUP BY managerId 
    HAVING count(*) >= 5 
);