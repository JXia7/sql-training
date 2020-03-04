
Drop Table z_em_EmpProj;
Drop Table z_em_Emp;
Drop Table z_em_Dept;
    
Create table z_em_Dept (d_id integer , d_name char(25));

Create table z_em_Emp (e_id integer , e_name char(25), d_id integer);
 
Create table z_em_EmpProj ( p_id char(25), e_id integer);

Insert Into z_em_Dept  Values (100, 'Manufacturing');
Insert Into z_em_Dept  Values (150, 'Accounting');
Insert Into z_em_Dept  Values (200, 'Marketing');
Insert Into z_em_Dept  Values (250, 'Research');

Insert Into z_em_Emp  Values (1, 'Jones', 150);
Insert Into z_em_Emp  Values (2, 'Martin', 150);
Insert Into z_em_Emp  Values (3, 'Gates', 250);
Insert Into z_em_Emp  Values (4, 'Anders', 100);
Insert Into z_em_Emp  Values (5, 'Bossy', Null);
Insert Into z_em_Emp  Values (6, 'Perkins', Null);

Insert Into z_em_EmpProj  Values ('ORDB-10', 3);
Insert Into z_em_EmpProj  Values ('ORDB-10', 5);
Insert Into z_em_EmpProj  Values ('ORDB-10', 2);
Insert Into z_em_EmpProj  Values ('Q4-SALES', 2);
Insert Into z_em_EmpProj  Values ('Q4-SALES', 4);
Insert Into z_em_EmpProj  Values ('Q4-SALES', 5);

Commit;

/*  demo 01  */
select d.d_name
 , d.d_id
 , e.d_id
 , e.e_id
 , e.e_name
from z_em_dept d
join z_em_emp e on d.d_id = e.d_id;


/*  demo 02  */
select z_em_dept.d_name
 , z_em_dept.d_id
 , z_em_emp.d_id
 , z_em_emp.e_id
 , z_em_emp.e_name
from z_em_dept
 , z_em_emp;
 
 
/*  demo 03  */
select z_em_dept.d_name
 , z_em_dept.d_id
 , z_em_emp.d_id
 , z_em_emp.e_id
 , z_em_emp.e_name
from z_em_dept
cross join z_em_emp;


/*  demo 04  */
select z_em_dept.d_name
 , z_em_dept.d_id
 , z_em_emp.d_id
 , z_em_emp.e_id
 , z_em_emp.e_name
 , p_id
from z_em_dept
cross join z_em_emp
cross join z_em_empproj;

