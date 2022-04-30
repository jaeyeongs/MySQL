/* 실습 문제 */

/* (1) 도서번호가 2인 도서의 이름 */
select bookname from book where bookid = '2';

/* (2) 추신수의 총 구매액 */
select sum(saleprice) from orders where custid = '4';
select sum(saleprice)
from customer, orders
where customer.custid=orders.custid
and customer.name like '추신수';

/* (3) 추신수가 구매한 도서의 출판사 수 */
select count(distinct publisher)
from customer, orders, book
where customer.custid=orders.custid and orders.bookid=book.bookid
and customer.name like '추신수';

/* (4) 추신수가 구매하지 않은 도서의 이름 */
select bookname from book b1
where not exists
(select bookname from customer, orders
where customer.custid=orders.custid and orders.bookid=b1.bookid
and customer.name like '추신수');

/* (5) 고객의 이름과 고객별 구매액 */
select name, sum(saleprice)
from customer, orders
where customer.custid=orders.custid
group by name;

/* (6) 고객의 이름과 고객이 구매한 도서 목록 */
select customer.name, book.bookname
from customer, orders, book
where customer.custid = orders.custid
and orders.bookid = book.bookid;

/* (7) 추신수가 구매한 도서의 출판사와 같은 출판사에서 도서를 구매한 고객의 이름 */
select name
from customer, orders, book
where customer.custid=orders.custid
and orders.bookid=book.bookid and name not like '추신수'
and publisher in
(select publisher from customer, orders, book
where customer.custid=orders.custid
and orders.bookid=book.bookid
and name like '추신수');
