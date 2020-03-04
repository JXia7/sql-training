/* Juanjuan Xia */

/* Task 01 */
select cl_name_first, cl_name_last, cl_phone 
from vt_clients 
where cl_phone is not null 
order by cl_id;

/* Task 02 */
select DISTINCT srv_id 
from vt_exam_details 
where ex_fee >= 75;

/* Task 03 */
select DISTINCT cl_id, an_type 
from vt_animals 
where an_type in ('snake', 'chelonian', 'crocodilian', 'lizard') 
order by cl_id;

/* Task 04 */
select cl_id, an_id, an_type, an_name 
from vt_animals 
where an_type in ('cat', 'dog');

/* Task 05 */
select DETAIL.ex_id, HEAD.ex_date, DETAIL.srv_id, DETAIL.ex_fee
from vt_exam_details AS DETAIL
inner join vt_exam_headers AS HEAD on DETAIL.ex_id = HEAD.ex_id
inner join vt_animals AS ANIMAL on HEAD.an_id = ANIMAL.an_id
where ANIMAL.an_type in ('hamster', 'capybara', 'porcupine', 'dormouse')
order by DETAIL.ex_id, DETAIL.srv_id;

/* Task 06 */
select ANIMAL.cl_id, HEAD.ex_id, HEAD.ex_date, DETAIL.srv_id, DETAIL.ex_fee
from vt_animals AS ANIMAL 
inner join vt_exam_headers AS HEAD on ANIMAL.an_id = HEAD.an_id 
inner join vt_exam_details AS DETAIL on HEAD.ex_id = DETAIL.ex_id
where not DETAIL.ex_fee between 25.00 AND 200.00
order by HEAD.ex_date, DETAIL.srv_id;
