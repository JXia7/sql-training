/* Juanjuan Xia */

/* Task 01 */
select CL.cl_id, CL.cl_name_last, AN.an_id, AN.an_type, AN.an_name 
from vt_clients CL
join vt_animals AN on CL.cl_id = AN.cl_id;

/* Task 02 */
select AN.an_id, AN.an_type, AN.an_name, EH.ex_id, EH.ex_date, ED.srv_id
from vt_animals AN
join vt_exam_headers EH on AN.an_id = EH.an_id
join vt_exam_details ED on EH.ex_id = ED.ex_id;

/* Task 03 */
select cl_id, cl_name_last
from vt_clients
where cl_id in (
    select cl_id 
    from vt_animals 
    where an_type is not null 
    or an_type not in ('snake', 'chelonian', 'crocodilian', 'lizard')
);

/* Task 04 */
select cl_id, cl_name_last
from vt_clients
where cl_id not in (
    select cl_id 
    from vt_animals 
);

/* Task 05 */
select srv_id, srv_list_price, srv_desc, srv_type
from vt_services
where srv_list_price >= 100 
and srv_id not in (select srv_id from vt_exam_details);

/* Task 06 */
select cl_id, cl_name_last
from vt_clients
where cl_id in (
    select cl_id 
    from vt_animals 
    where an_type in ('dog')
)
and cl_id in (
    select cl_id 
    from vt_animals 
    where an_type in ('snake', 'chelonian', 'crocodilian', 'lizard')
);

/* Task 07 */
select cl_id, cl_name_last
from vt_clients
where cl_id in (
    select cl_id 
    from vt_animals 
    where an_type in ('dog')
)
and cl_id not in (
    select cl_id 
    from vt_animals 
    where an_type in ('snake', 'chelonian', 'crocodilian', 'lizard')
);
