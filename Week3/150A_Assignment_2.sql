/* Juanjuan Xia */

/* Task 01 */
select stf_name_first, stf_name_last, stf_job_title from vt_staff;

/* Task 02 */
select an_id AS "ID", an_name AS "Name", an_type AS "Animal Type", an_dob AS "BirthDate" from vt_animals ORDER BY an_dob;

/* Task 03 */
select DISTINCT an_type from vt_animals;

/* Task 04 */
select srv_type, srv_desc from vt_services ORDER BY srv_type, srv_list_price;

/* Task 05 */
select ex_id, srv_id, ex_fee from vt_exam_details ORDER BY ex_id, ex_fee;

/* Task 06 */
select an_name, an_type, an_dob from vt_animals ORDER BY an_type, an_name;

/* Task 07 */
select an_id, ex_date, stf_id from vt_exam_headers ORDER BY stf_id, ex_date;

/* Task 08 */
select DISTINCT cl_state, cl_city from vt_clients ORDER BY cl_state, cl_city;
