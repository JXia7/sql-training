/* Juanjuan Xia */

/* Task 01 */
select cl_id, an_id, an_type, an_name from vt_animals where an_type in ('cat', 'dog');

/* Task 02 */
select CL.cl_id, CL.cl_name_last 
from vt_clients as CL
left join vt_animals as AN
on CL.cl_id = AN.cl_id
where AN.an_type is null;

/* Task 03 */
select distinct CL.cl_id, CL.cl_name_last 
from vt_clients as CL
left join vt_animals as AN
on CL.cl_id = AN.cl_id
where AN.an_type is null
or AN.an_type not in ('hamster', 'capybara', 'porcupine', 'dormouse');

/* Task 04 */
select cl_id, cl_name_last, an_id, an_name, an_type
from vt_animals
join vt_clients using(cl_id)
left join vt_exam_headers using(an_id)
where ex_id is null
order by cl_id, an_id;

/* Task 05 */
select distinct CL.cl_id, CL.cl_name_last 
from vt_clients as CL
left join vt_animals as AN
on CL.cl_id = AN.cl_id
where AN.an_type not in ('hamster', 'capybara', 'porcupine', 'dormouse');

/* Task 06 */
select CL.cl_id, CL.cl_name_last, AN.an_id, AN.an_name, AN.an_dob
from vt_animals AS AN
join vt_clients AS CL
on AN.cl_id = CL.cl_id
where CL.cl_city in ('New York', 'Massachusetts')
and AN.an_type not in (select an_type from vt_animals where an_type in ('dog', 'cat', 'bird'));

/* Task 07 */
select SRV.srv_id, SRV.srv_list_price, SRV.srv_desc, SRV.srv_type
from vt_services as SRV
left join vt_exam_details as ED
on SRV.srv_id = ED.srv_id
where ED.ex_id is null
and SRV.srv_list_price >= 100;



