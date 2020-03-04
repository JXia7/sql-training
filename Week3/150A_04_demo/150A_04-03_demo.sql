

/*   Demo 01  */		
select emp_id, name_last as "Employee",  salary, dept_id
from emp_employees
where salary > 15000;

/*   Demo 02  */	
select emp_id, name_last as "Employee",  salary, dept_id
from emp_employees
where salary > 60000
AND dept_id =30
;

/*   Demo 03  */	
select job_id, min_salary, max_salary
from emp_jobs
where  job_title NOT LIKE '%Sales%'
AND    min_salary > 40000
;

/*   Demo 04  */		
select emp_id,name_last as "Employee", salary 
from emp_employees
where  salary between 20000 and 60000
order by salary, emp_id;

/*   Demo 05  */		
select emp_id,name_last as "Employee", salary  
from emp_employees
where  salary > 20000
AND    salary < 60000
order by salary;

/*   Demo 06  */		
select emp_id,name_last as "Employee", salary  
from emp_employees
where  salary < 12000
AND    salary > 25000
order by salary;

/*   Demo 07  */		
select emp_id, name_last as "Employee"
, dept_id, salary, job_id
from emp_employees
where  dept_id = 35
AND salary > 50000
AND job_id in (8, 16)
;



/*   Demo 08  */	
Select
  emp_id
, name_last As "Employee"
, dept_id
From emp_employees
Where dept_id = 30
Or dept_id = 20
Order By "Employee"
;


/*   Demo 09  */		
Select
  emp_id
, hire_date
, salary
, job_id
From emp_employees
Where salary > 70000
Order By emp_id
;

/*   Demo 10  */		
select emp_id
, dept_id, salary, job_id
from emp_employees
where  dept_id = 30
OR     salary > 70000
order by emp_id;


/*   Demo 11  */		
select  emp_id
, hire_date, salary, job_id
from emp_employees
where  dept_id = 30
OR     salary > 70000
OR     job_id in (8, 16)
order by emp_id;


/*   Demo 12  */	
Select
  job_id
, job_title
, min_salary
, max_salary
From emp_jobs
Where max_salary >= 20000
Or max_salary Is Null
;


/*   Demo 13  */		
Select
  emp_id
, name_last As "Employee"
, dept_id
From emp_employees
Where Not dept_id In (30, 20)
Order By "Employee"
;


/*   Demo 14  */	
Select
  prod_id
, prod_list_price
, catg_id
From prd_products
Where catg_id = 'PET'
Or catg_id = 'SPG'
And prod_list_price < 100
;


/*   Demo 15  */	
Select
  prod_id
, prod_list_price
, catg_id
From prd_products
Where catg_id = 'SPG'
Or catg_id = 'PET'
And prod_list_price < 100
;


/*   Demo 16  */		
Select
  prod_id
, prod_list_price
, catg_id
From prd_products
Where (catg_id = 'SPG' Or catg_id = 'PET')
And prod_list_price < 100
;


/*   Demo 17  */	
Select
  prod_id
, prod_list_price
, catg_id
From prd_products
Where catg_id In ('SPG', 'PET')
And prod_list_price < 100
;


/*   Demo 18  */
select prod_id
, prod_desc
, prod_list_price, catg_id
from prd_products
where NOT( prod_list_price < 300 OR catg_id = 'APL')
;

select prod_id
, prod_desc
, prod_list_price, catg_id
from prd_products
where NOT( prod_list_price < 300)  AND NOT( catg_id = 'APL')
;

select prod_id
, prod_desc
, prod_list_price, catg_id
from prd_products
where  prod_list_price >= 300  AND  catg_id != 'APL'
;


/*   Demo 19  */
select customer_id, customer_name_last
from cust_customers
where customer_id =402500;

/*   Demo 20  */
select *
from cust_customers
where customer_id < 403050 AND customer_credit_limit  < 1000
;

/*   Demo 21  */
select *
from cust_customers
where customer_id < 403050 OR customer_credit_limit  < 1000;
