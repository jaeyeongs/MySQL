/* 3. 두 개 이상 테이블에서의 SQL 질의 */

select * from customer, orders;

/* 3-1 조인  */
select * from customer, orders where customer.custid = orders.custid;  /* 두 개의 테이블을 연결할 때 custid 기준으로 동일한 테이블로 형성 */
select * from customer, orders where customer.custid = orders.custid order by customer.custid;
select name, saleprice from customer, orders where customer.custid = orders.custid;
select name, sum(saleprice) from customer, orders where customer.custid = orders.custid group by customer.name order by customer.name;
select customer.name, book.bookname from customer, orders, book where customer.custid = orders.custid and orders.bookid = book.bookid;
select customer.name, book.bookname from customer, orders, book where customer.custid = orders.custid and orders.bookid = book.bookid and book.price = 20000;

/* 3-2 외부조인 */
select customer.name, saleprice from customer left outer join orders on customer.custid = orders.custid; /* left : customer 데이터는 모두 가져오면서 orders와 동일한 데이터 출력 */
select customer.name, saleprice from customer right outer join orders on customer.custid = orders.custid;

/* 3-3 부속 질의 */
select bookname from book where price = (select max(price) from book); /* 질의 안에 질의 */
select name from customer where custid in (select custid from orders);
select name from customer where custid in (select custid from orders where bookid in (select bookid from book where publisher = '대한미디어'));
select b1.bookname from book b1 where b1.price > (select avg(b2.price) from book b2 where b2.publisher = b1.publisher); /* 상관 부속질의 : 상위 부속질의의 투플을 이용하여 하위 부속질의를 계산 */
																														/* b1 : 상위 book 테이블, b2 : 하위 book 테이블 */

/* 3-4 집합 연산 */
/* 합집합 : UNION */ 
/* 차집합 : MINUS(MySQL 지원X) */
/* 교집합 : INTERSECT(MySQL 지원X) */
select name from customer where address like '대한민국%' union select name from customer where custid in (select custid from orders);

/* MINUST 대신 NOT IN 연산자 사용 */
select name from customer where address like '대한민국%' and name not in (select name from customer where custid in (select custid from orders)); 

/* INTERSECT 대신 IN 연산자 사용 */
select name from customer where address like '대한민국%' and name in (select name from customer where custid in (select custid from orders));

/* 3-5 EXISTS */
select name, address from customer cs where exists (select * from orders od where cs.custid = od.custid);
