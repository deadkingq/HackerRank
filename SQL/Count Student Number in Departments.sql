select dept_name, count(student.student_id) as student_number 
from student right join department on student.dept_id=department.dept_id 
group by dept_name
order by student_number DESC, dept_name;
