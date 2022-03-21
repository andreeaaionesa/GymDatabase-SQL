SELECT *
FROM Client C
WHERE C.typem_id = 1 

SELECT E.username
FROM Employee E
WHERE E.gym_id = 1

SELECT C.first_name
FROM Client C
WHERE C.age > 18

SELECT C.last_name
FROM Client C
WHERE C.typem_id = 1 
EXCEPT
SELECT C2.last_name
FROM Client C2
WHERE C2.gender='male'

SELECT *
FROM Client C
WHERE C.age > 18
UNION
SELECT *
FROM Client C
WHERE C.gym_id = 3

SELECT C.first_name
FROM Client C
WHERE C.age > 18
EXCEPT
SELECT C.first_name
FROM Client C
WHERE C.gym_id = 3

SELECT * FROM Employee
ORDER BY first_name;

SELECT phone FROM Gyms
ORDER BY city;

SELECT COUNT(client_id), address_client
FROM Client
GROUP BY address_client;

SELECT COUNT(typem_id), signup_fee
FROM Membership_type
WHERE signup_fee = 30;
GROUP BY signup_fee;

SELECT typem_id,signup_fee
FROM Membership_type
WHERE name_type = 'all day'
GROUP BY typem_id, signup_fee;