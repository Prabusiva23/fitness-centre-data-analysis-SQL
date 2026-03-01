# Fitness Centre Data Analysis using SQL

## Project Overview
This project is a SQL-based database system designed to manage and analyze data for multiple fitness centres.  
It demonstrates practical implementation of relational database concepts using MySQL.

The system includes:
- Gym details management
- Member information tracking
- Payment and membership status monitoring
- Analytical queries for business insights

## Database Structure

### 1. Gym Table
Stores gym information:
- gym_id (Primary Key)
- gym_name
- city
- monthly_fee
- rating

### 2. Member Table
Stores member details:
- member_id (Primary Key)
- member_name
- age
- gender
- gym_id (Foreign Key)
- join_date

### 3. Payment Table
Tracks payment records:
- payment_id (Primary Key)
- member_id (Foreign Key)
- payment_status
- payment_method
- membership_status

## 🔗 Relationships
- One gym can have multiple members.
- Each member belongs to one gym.
- Each member has one payment record.
- Foreign key constraints maintain data integrity.

##SQL Operations Performed

### Data Definition (DDL)
- CREATE DATABASE
- CREATE TABLE
- ALTER TABLE
- FOREIGN KEY constraints

### Data Manipulation (DML)
- INSERT
- UPDATE
- DELETE

### Data Analysis Queries
- INNER JOIN operations
- GROUP BY with COUNT
- Aggregate functions (AVG, MAX)
- Subqueries
- Filtering using WHERE conditions

## Business Insights Generated
- Members enrolled in Chennai gyms
- Gyms with above-average monthly fees
- Members older than average age
- Total members per gym
- Members with paid / pending / overdue status
- Gym with highest monthly fee

## Tools Used
- MySQL
- SQL
- GitHub

## Objective
To demonstrate understanding of:
- Relational database design
- Query writing and optimization
- Business data analysis using SQL
- Real-world data modeling

---

## Author
Prabu KS  
B.E. Medical Electronics  
Aspiring Data Analyst
