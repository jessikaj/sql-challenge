select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
join salaries on salaries.emp_no = employees.emp_no;

select employees.first_name, employees.last_name, employees.hire_date
from employees
where hire_date between '01/01/1986' and '12/31/1986';
 
select dept_emp.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name,titles.title
from employees
join dept_emp on dept_emp.emp_no= employees.emp_no
left join departments on departments.dept_no = dept_emp.dept_no
left join titles on titles.title_id = employees.emp_title_id
where title ='Manager';

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp on dept_emp.emp_no = employees.emp_no
left join departments on departments.dept_no= dept_emp.dept_no;

select employees.first_name, employees.last_name, employees.sex
from employees
where employees.first_name = 'Hercules'
and employees.last_name like 'B%';

select employees.emp_no,employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp on dept_emp.emp_no =employees.emp_no
join departments on departments.dept_no = dept_emp.dept_no
where departments.dept_name = 'Sales';

select employees.emp_no,employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp on dept_emp.emp_no =employees.emp_no
join departments on departments.dept_no = dept_emp.dept_no
where departments.dept_name = 'Sales' 
or departments.dept_name = 'Development';


select last_name,
count (last_name) as count
from employees
group by last_name
order by count desc