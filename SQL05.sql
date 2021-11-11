/* 5. 데이터 조작어(DML) */

/* 5-1 INSERT 문  */
insert into Book(bookid, bookname, publisher, price) values (11, '스포츠 의학', '한솔의학서적', 90000);
insert into Book(bookid, bookname, publisher) values (14, '스포츠 의학', '한솔의학서적'); /* 도서의 가격을 몰라도 가격 속성만 빼고 데이터를 삽입 가능 */

/* 대량 삽입(bulk insert) */
insert into Book(bookid, bookname, price, publisher)
select bookid, bookname, price, publisher
from imported_book;
    
/* 5-2 UPDATE 문  */
update customer set address = '대한민국 부산' where custid = 5;
select * from customer; /* update 확인 */

update book
set publisher = (select publisher from imported_book where bookid = '21')
where bookid = '14';

/* 5-3 DELETE 문  */
delete from book where bookid = '11';
delete from customer; /* error : safe updates 옵션 설정 후 재실행하면 됨 */
