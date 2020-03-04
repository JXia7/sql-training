/* Juanjuan Xia */


/* Task 01 */

CREATE TABLE bk_books (
	book_id NUMERIC(6 , 0 ), 
	title CHAR(100),
	year_publd YEAR,
	isbn CHAR(25),
	page_count CHAR(25),
	list_price NUMERIC(6 , 2 )
);

CREATE TABLE bk_customers(
	cust_id NUMERIC(6 , 0 ),
	cust_name_last CHAR(25),
	cust_name_first CHAR(25),
	cust_state CHAR(25),
	cust_postal_code CHAR(25),
	cust_acct_opened DATE
);

CREATE TABLE bk_order_headers(
	order_id NUMERIC(6 , 0 ),
	order_date DATE,
	cust_id NUMERIC(6 , 0 )
);

CREATE TABLE bk_order_details(
	order_id NUMERIC(6 , 0 ),
	cust_id NUMERIC(6 , 0 ),
	order_line CHAR(25),
	book_id NUMERIC(6 , 0 ),
	quantity CHAR(25),
	order_price NUMERIC(6 , 2 )
);
