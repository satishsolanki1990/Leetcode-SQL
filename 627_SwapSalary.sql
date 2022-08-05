
/*
Table: Salary

+-------------+----------+
| Column Name | Type     |
+-------------+----------+
| id          | int      |
| name        | varchar  |
| sex         | ENUM     |
| salary      | int      |
+-------------+----------+
id is the primary key for this table.
The sex column is ENUM value of type ('m', 'f').
The table contains information about an employee.
 

Write an SQL query to swap all 'f' and 'm' values 
(i.e., change all 'f' values to 'm' and vice versa) with a single update
 statement and no intermediate temporary tables.

Note that you must write a single update statement, do not write any 
select statement for this problem.

The query result format is in the following example.

 

Example 1:

Input: 
Salary table:
+----+------+-----+--------+
| id | name | sex | salary |
+----+------+-----+--------+
| 1  | A    | m   | 2500   |
| 2  | B    | f   | 1500   |
| 3  | C    | m   | 5500   |
| 4  | D    | f   | 500    |
+----+------+-----+--------+
Output: 
+----+------+-----+--------+
| id | name | sex | salary |
+----+------+-----+--------+
| 1  | A    | f   | 2500   |
| 2  | B    | m   | 1500   |
| 3  | C    | f   | 5500   |
| 4  | D    | m   | 500    |
+----+------+-----+--------+
Explanation: 
(1, A) and (3, C) were changed from 'm' to 'f'.
(2, B) and (4, D) were changed from 'f' to 'm'.

syntax: 
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

SELECT OrderID, Quantity,
CASE
    WHEN Quantity > 30 THEN "The quantity is greater than 30"
    WHEN Quantity = 30 THEN "The quantity is 30"
    ELSE "The quantity is under 30"
END
FROM OrderDetails;

UPDATE salary set sex =
(Case sex
when 'm' then 'f' 
when 'f' then 'm'
end);

# Write your MySQL query statement below
UPDATE salary set sex =
(Case 
when sex = 'm' then 'f' 
when sex = 'f' then 'm'
end);
*/

UPDATE salary 
set sex = 
Case sex 
when 'm' then 'f' 
else 'm'
END;







