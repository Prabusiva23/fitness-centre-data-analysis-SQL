# 1. Display the member name along with their gym name and city
SELECT m.member_name, g.gym_name, g.city
FROM member m
JOIN gym g
ON m.gym_id = g.gym_id;


# 2. List members who are enrolled in gyms with monthly fee greater than 1700
SELECT m.member_name, g.gym_name, g.monthly_fee
FROM member m
JOIN gym g
ON m.gym_id = g.gym_id
WHERE g.monthly_fee > 1700;


# 3. Find the number of gyms available in each city
SELECT city, COUNT(*) AS total_gyms
FROM gym
GROUP BY city;


# 4. Find the total number of members enrolled in each gym
SELECT g.gym_name, COUNT(m.member_id) AS total_members
FROM gym g
JOIN member m
ON g.gym_id = m.gym_id
GROUP BY g.gym_name;


# 5. Display gyms whose monthly fee is higher than the average monthly fee
SELECT *
FROM gym
WHERE monthly_fee > (
    SELECT AVG(monthly_fee)
    FROM gym
);


# 6. List members whose age is greater than the average age of all members
SELECT member_name, age
FROM member
WHERE age > (
    SELECT AVG(age)
    FROM member
);


# 7. Find the gym with the highest monthly fee
SELECT gym_name
FROM gym
WHERE monthly_fee = (
    SELECT MAX(monthly_fee)
    FROM gym
);


# 8. Display names of members who belong to gyms located in Chennai
SELECT member_name
FROM member
WHERE gym_id IN (
    SELECT gym_id
    FROM gym
    WHERE city = 'Chennai'
);


# 9. Display member name, gym name, and payment status for all members
SELECT m.member_name, g.gym_name, p.payment_status
FROM member m
JOIN gym g
ON m.gym_id = g.gym_id
JOIN payment p
ON m.member_id = p.member_id;


# 10. Display members who have paid their fees and are enrolled in gyms with above-average monthly fees
SELECT m.member_name, g.gym_name, p.payment_status
FROM member m
JOIN gym g
ON m.gym_id = g.gym_id
JOIN payment p
ON m.member_id = p.member_id
WHERE g.monthly_fee > (
    SELECT AVG(monthly_fee)
    FROM gym
)
AND p.payment_status = 'Paid';
