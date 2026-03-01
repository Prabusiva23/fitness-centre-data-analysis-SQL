CREATE TABLE gym (
    gym_id INT PRIMARY KEY,
    gym_name VARCHAR(50),
    city VARCHAR(30),
    monthly_fee INT,
    rating DECIMAL(2,1)
);

CREATE TABLE member (
    member_id INT PRIMARY KEY,
    member_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    gym_id INT,
    join_date DATE,
    FOREIGN KEY (gym_id) REFERENCES gym(gym_id)
);

CREATE TABLE payment (
    payment_id INT PRIMARY KEY,
    member_id INT,
    payment_status VARCHAR(20), 
    payment_method VARCHAR(20),   
    membership_status VARCHAR(20),
    FOREIGN KEY (member_id) REFERENCES member(member_id)
);
