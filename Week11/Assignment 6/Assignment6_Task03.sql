/* Juanjuan Xia */

/* Task 03 */

select * from bk_order_details
 left join bk_order_headers using(order_id)
 left join bk_books using(book_id)
 join bk_customers on bk_customers.cust_id = bk_order_headers.cust_id;
