# Write your MySQL query statement below
select Employees.employee_id from Employees left join Salaries on Employees.employee_id = Salaries.employee_id
where Salaries.salary is null union
select Salaries.employee_id from Salaries left join Employees on Employees.employee_id = Salaries.employee_id
where Employees.name is null order by employee_id