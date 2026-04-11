use new;

# Select all columns
select * from departments;

# Select specific columns
select department_id, department_name 
from departments;

# count all rows
select count(*) from departments;

# count non-null values
select count(location) from departments;

# Find unique values
select distinct location from departments;

# Filter based on location(Bangalore)
select * from departments
where location = 'Bangalore';

select count(*) from departments
where location = 'Bangalore';

# Filter with and 
select * from departments
where department_name='Dept_82' and location = 'Pune';

# Filter with or
select * from departments
where location = 'Pune' or location = 'Mumbai';

# Complex filter (And + or)
use northwind;
select * from salaries;

select * from salaries
where (department = 'Marketing' or department= 'Engineering') and salary > 35000;

# Exculde a values
select * from departments
where location <> "Pune";

# Filter using in
select * from departments
where location in ('Mumbai','Pune','Chennai');

# Filter using not in
select * from departments
where location not in ('Pune', 'Mumbai');