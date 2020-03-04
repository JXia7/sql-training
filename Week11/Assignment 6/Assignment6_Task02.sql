/* Juanjuan Xia */


/* Task 02 */

--  ---------- books inserts
insert into bk_books (book_id, title, year_publd, isbn, page_count, list_price)
values (1305, 'Journeys Through Flatland', '1958', '387515357', '100', 9.99);
insert into bk_books (book_id, title, year_publd, isbn, page_count, list_price)
values (1401, 'Visual Studio Tools for Office', '2006', '321334884', '976', 54.99);
insert into bk_books (book_id, title, year_publd, isbn, page_count, list_price)
values (1101, 'Programming SQL Server with VB.NET', '2002', '735615357', '300', 59.99);


--  ---------- customers inserts
insert into bk_customers (cust_id, cust_name_last, cust_name_first, cust_state, cust_postal_code, cust_acct_opened)
values (226656, 'Randall', 'Randell', 'NJ', '8251', '2012-08-08');
insert into bk_customers (cust_id, cust_name_last, cust_name_first, cust_state, cust_postal_code, cust_acct_opened)
values (259906, 'Capybara', 'Wile E.', 'CA', '94132', '2014-08-05');
insert into bk_customers (cust_id, cust_name_last, cust_name_first, cust_state, cust_postal_code, cust_acct_opened)
values (221297, 'Dodgson', 'Charles', 'MI', '49327', '2001-05-06');


--  ---------- order_details insert
insert into bk_order_details (order_id, cust_id, order_line, book_id, quantity, order_price)
values (12900, 226656, '2', 1305, '125', '5');
insert into bk_order_details (order_id, cust_id, order_line, book_id, quantity, order_price)
values (12901, 259906, '1', 1401, '50', '49');
insert into bk_order_details (order_id, cust_id, order_line, book_id, quantity, order_price)
values (12855, 221297, '1', 1101, '5', '59.99');

--  ---------- order_headers insert
insert into bk_order_headers (order_id, order_date, cust_id)
values (12900, '2015-01-25', 226656);
insert into bk_order_headers (order_id, order_date, cust_id)
values (12901, '2015-01-26', 259906);
insert into bk_order_headers (order_id, order_date, cust_id)
values (12855, '2015-01-18', 221297);
