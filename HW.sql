-- avg salary
SELECT AVG(salary) AS AverageSalary FROM salaries;
-- max/min salary
SELECT MAX(salary) as MaxSalary from salaries;
select min(salary) as MinSalary from salaries;
-- most common title
SELECT title, COUNT(*) AS MostCommon 
FROM titles 
GROUP BY title 
ORDER BY MostCommon DESC
LIMIT 1;
-- dept w/ most employees
select d.dept_no, d.dept_name, (count(e.emp_no))
from departments d inner join dept_emp e 
on d.dept_no = e.dept_no
where to_date = '9999-01-01'
group by dept_no;
-- longest empl

-- highest avg salary per dept
select d.dept_name, avg(s.salary) as avg_salary
from salaries s join
     dept_emp de
     on s.emp_no = de.emp_no
     join departments d
     on d.dept_no = de.dept_no
group by d.dept_name
order by avg_salary desc;
-- Employees - oldest, youngest, oldest male, oldest female
SELECT * FROM employees WHERE birth_date ORDER BY birth_date ASC LIMIT 1;
SELECT * FROM employees WHERE birth_date ORDER BY birth_date DESC LIMIT 1;
SELECT * FROM employees WHERE birth_date group by gender = 'M' order BY birth_date ASC LIMIT 1;
SELECT * FROM employees WHERE birth_date group by gender = 'F' ORDER BY birth_date DESC LIMIT 1;
-- Count of employee by dept
SELECT dept_name AS 'Department Name', 
COUNT(*) AS 'No of Employees' 
FROM dept_emp 
INNER JOIN departments 
ON dept_emp.dept_no = departments.dept_no 
GROUP BY departments.dept_no, dept_name 
ORDER BY dept_name;
-- highest salary for emp
	-- under 30, under 40, over 50, over 60