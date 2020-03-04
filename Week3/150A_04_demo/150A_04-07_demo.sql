/*  demo 01  */
select dept_id, dept_name 
from emp_departments;


/*  demo 02  */
select dp.dept_id, dp.dept_name 
from emp_departments dp;
;

select dept_id, dept_name 
from emp_departments dp;
;

select employee.departments.dept_id, employee.departments.dept_name 
from emp_departments dp


/*  demo 03  */
select emp_id
 , name_last as "Employee"
 , dept_name
from emp_employees
inner join emp_departments using ( dept_id ) ;


/*  demo 04  */
select customer_id
 , cust_customers.customer_name_last as "Customer"
 , oe_orderHeaders.order_id
from cust_customers
inner join oe_orderHeaders using ( customer_id )
order by customer_id ;


/*  demo 05  */
select customer_id
 , cust_customers.customer_name_last as "Customer"
 , order_id
 , oe_orderDetails.prod_id
from cust_customers
join oe_orderHeaders using ( customer_id )
join oe_orderDetails using ( order_id )
order by customer_id
 , order_id ;
 
 
/*  demo 06  */
select customer_id
 , cust_customers.customer_name_last as "Customer"
 , order_id
 , prod_id
 , prd_products.prod_name
from cust_customers
join oe_orderHeaders using ( customer_id )
join oe_orderDetails using ( order_id )
join prd_products using ( prod_id ) ;


/*  demo 07  */
select customer_id
 , order_id
 , prod_id
 , prd_products.prod_name
 , oe_orderDetails.quoted_price
from cust_customers
join oe_orderHeaders using ( customer_id )
join oe_orderDetails using ( order_id )
join prd_products using ( prod_id )
join prd_categories using ( catg_id )
where catg_desc in ( 'APPLIANCES' ) ;


/*  demo 08  */
select oe_orderHeaders.order_id
 , oe_orderHeaders.customer_id
 , emp_employees.emp_id
 , emp_employees.name_last as "SalesRep"
from oe_orderHeaders
join emp_employees on oe_orderHeaders.sales_rep_id = emp_employees.emp_id
order by oe_orderHeaders.order_id ;


/*  demo 09  */
select cust_customers.customer_id
 , cust_customers.customer_name_last as "Customer"
 , oe_orderHeaders.order_id
from cust_customers
join oe_orderHeaders on cust_customers.customer_id = oe_orderHeaders.customer_id ;


/*  demo 10  */
select customer_id
 , cust_customers.customer_name_last as "Customer"
 , oe_orderHeaders.order_id
 , emp_employees.emp_id
 , emp_employees.name_last as "SalesRep"
from cust_customers
join oe_orderHeaders using ( customer_id )
join emp_employees on oe_orderHeaders.sales_rep_id = emp_employees.emp_id ;


/*  demo 11  */
select customer_id
 , cust_customers.customer_name_last as "Customer"
 , oe_orderHeaders.order_id
 , emp_employees.emp_id
 , emp_employees.name_last as "SalesRep"
 , emp_departments.dept_name
from cust_customers
join oe_orderHeaders using ( customer_id )
join emp_employees on oe_orderHeaders.sales_rep_id = emp_employees.emp_id
join emp_departments using ( dept_id )
order by customer_id
 , oe_orderHeaders.order_id ;
 
 
/*  demo 12  */
select customer_id
 , cs.customer_name_last as "Customer"
 , oh.order_id
 , em.emp_id
 , em.name_last as "SalesRep"
 , dp.dept_name
from cust_customers cs
join oe_orderHeaders oh using ( customer_id )
join emp_employees em on oh.sales_rep_id = em.emp_id
join emp_departments dp using ( dept_id )
order by customer_id
 , oh.order_id ;
 
 
/*  demo 13  */
select 
  CS.customer_id
, OH.order_id
, OD.prod_id
, PR.prod_name
, OD.quoted_price
from cust_customers       CS
join oe_orderHeaders   OH  on CS.customer_id = OH.Customer_id 
join oe_orderDetails   OD  on OH.order_id  = OD.order_id
join prd_products       PR  on OD.prod_id = PR.prod_id 
join prd_categories     CT  on PR.catg_id = CT.catg_id 
where CT.catg_desc in('APPLIANCES');


