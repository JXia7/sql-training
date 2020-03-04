
create table vt_staff (
    stf_id          numeric(6,0)  
  , stf_name_last   char(25)    not null
  , stf_name_first  char(25)    not null
  , stf_job_title   char(25)    not null
  
);

create table vt_staff_pay (
    stf_id          numeric(6,0) 
  , stf_ssn         char(9)         not null  
  , stf_salary      numeric(8,2)     not null 
  , stf_hire_date   date            not null
  
);


create table vt_services(
    srv_id          numeric(6,0)  
  , srv_list_price  numeric(6,2)   not null 
  , srv_desc        char(50)    not null
  , srv_type        char(25)    not null
  
);

create table vt_animal_types(
    an_type         char(25)
);


create table vt_clients(
    cl_id           numeric(6,0)
  , cl_name_last    char(25)    not null
  , cl_name_first   char(25)    null
  , cl_address      char(25)    not null
  , cl_city         char(25)    not null
  , cl_state        char(2)         not null
  , cl_postal_code  char(12)    not null
  , cl_phone        char(12)    null
  
);


create table vt_animals(
    an_id           numeric(6,0)     
  , an_type         char(25)    not null   
  , an_name         char(25)    null
  , an_dob          date            not null
  , cl_id           numeric(6,0)     not null  
  
 
  );

  
create table vt_exam_headers(
    ex_id           numeric(6,0)     
  , an_id           numeric(6,0)     not null  
  , stf_id          numeric(6,0)     not null  
  , ex_date         date            not null
 
  );

create table vt_exam_details(
    ex_id           numeric(6,0)     not null  
  , line_item       numeric(6,0)     not null  
  , srv_id          numeric(6,0)     not null  
  , ex_fee          numeric(6,2)     not null
  , ex_desc         char(50)    not null
  
  
);
