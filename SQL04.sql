/* 4. 데이터 정의어(DDL) */

/* PRIMARY KEY : 기본키를 정할 때 사용 */
/* FOREIGN KEY : 외래키를 지정할 때 사용 */
/* ON UPDATE & ON DELETE : 외래키 속성의 수정과 투플 삭제 시 동작을 나타냄 */

/* 4-1 CREATE 문  */
create table NewBook (bookid integer, bookname varchar(20), publisher varchar(20), price integer);
create table NewBook (bookid integer primary key, bookname varchar(20), publisher varchar(20), price integer); /* 기본키 지정 */

/* bookid 속성이 없어서 두 개의 속성 bookname, publisher가 기본키가 된다면 괄호를 사용하여 복합키를 지정한다 */
create table NewBook (bookname varchar(20), publisher varchar(20), price integer, primary key (bookname, publisher));

/* NewBook 테이블의 CREATE 문에 좀 더 복잡한 제약사항을 추가한다 */
create table NewBook (bookname varchar(20) not null, publisher varchar(20) unique, price integer default 10000 check(price >= 1000), primary key (bookname, publisher));

create table NewCustomer (custid integer primary key, name varchar(40), address varchar(40), phone varchar(30));
create table NewOrders (
orderid integer,
custid integer not null,
bookid integer not null,
saleprice integer,
orderdate date,
primary key(orderid),
foreign key (custid) references NewCustomer(custid) on delete cascade);

/* 4-2 ALTER 문 */
/* ADD, DROP : 속성을 추가하거나 제거 */
/* MODIFY : 속성의 기본값을 설정하거나 삭제 */

alter table NewBook add isbn varchar(13);
alter table NewBook modify isbn integer;
alter table NewBook drop column isbn;
alter table NewBook modify bookid integer not null;
alter table NewBook add primary key(bookid);

/* 4-3 DROP 문 */
/* DROP문은 테이블의 구조와 데이터를 모두 삭제, 데이터만 삭제할시 DELETE문 사용 */
drop table NewBook;
drop table NewCustomer; /* NewOrders 테이블이 NewCustomer를 참조 */