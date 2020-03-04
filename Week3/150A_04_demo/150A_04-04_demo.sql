/* demo 01  */	
Drop Table z_wildcards;
Create table z_wildcards   (customer_id integer, customer_phone char(12), customer_address char(30) );

Insert Into z_wildcards
  Values (1, '510-239-8989', '101 Bush Street');
Insert Into z_wildcards
  Values (2, '510-45-78785', 'One Bush Street');
Insert Into z_wildcards
  Values (3, '415-809-8989', '124 High');
Insert Into z_wildcards
  Values (4, '415-124-2398', '15 High Road');
Insert Into z_wildcards
  Values (5, '415-239-8523', '1554 Rural Highway 12');

/* demo 02  */	
Select
  customer_id
, customer_address
From z_wildcards
Where customer_Address Like '%Bush%'
;

/* demo 03  */	
select   customer_id, customer_phone 
from     z_wildcards  
where    customer_phone LIKE '415%'
;

/* demo 04  */	
Select   customer_id, customer_phone 
from     z_wildcards  
where    customer_phone LIKE '%239%'
;

/* demo 05  */	
Select
  customer_id
, customer_phone
From z_wildcards
Where customer_phone Like '%-239-%'
;

/* demo 06  */	
Select
  customer_id
, customer_address
From z_wildcards
Where customer_address Like '%High%'
;

/* demo 07  */	
Select
  customer_id
, customer_address
From z_wildcards
Where customer_address Like '%High %'
;

/* demo 08  */	
Select  *
From vt_services
Where srv_list_price Like '%5%';

/* demo 09  */
Select  *
From vt_services
Where srv_list_price Not Like '%.00%';

