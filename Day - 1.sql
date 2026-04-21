# 1.  Find the second highest salary from the Employee table.
select * from Employee;

# Method 1
select max(salary) from Employee
where salary < (select max(salary) from Employee);

# Method 2
select * from employee
order by salary desc
limit 1 offset 1;

# 2.  Find duplicate records in a table.
select * from Employees;

# Method
select name, count(*)
from Employees
group by name
having count(*) > 1;

# 3. Retrieve employees who earn more than their manager.
select * from employee_;

# Method
with cte as (
select e.id as emp_id, e.name as emp_name, e.salary as emp_salary,
m.name as manager_name, m.salary as manager_salary
from employee_ as e
inner join employee_ as m
on e.manager_id = m.id)

select * from cte
where emp_salary > manager_salary;

# Method 2
select e.id as emp_id, e.name as emp_name, e.salary as emp_salary,
m.name as manager_name, m.salary as manager_salary
from employee_ as e
inner join employee_ as m
on e.manager_id = m.id
where e.salary > m.salary;

# 4. Count employees in each department having more than 5 employees.
select * from employees_;

select department, count(*)
from employees_
group by department
having count(*) > 5;

# 5. Find employees who joined in the last 6 months.
select * from employee__;

select * from employee__
where join_date >= current_date() - interval 3 month;

# 6. Get departments with no employees.
select * from department;

select * from employee_s;

select * from department as d
left join employee_s as e
on d.dept_id = e.dept_id
where emp_id is null;



