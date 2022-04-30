/* 1. SELECT 문 */

/* 1-1 SELECT/FROM */
select bookname, price from book;
select price, bookname from book; /* 열의 순서를 바꿔서 나타냄 */
select bookid, bookname, publisher, price from book;
select * from book;

/* 1-2 WHERE 조건 */
select * from book where price < 20000;
select * from book where price between 10000 and 20000;
select * from book where price >= 10000 and price <= 20000; /* BETWEEN은 논리 연산자인 AND를 사용할 수 있다 */
select * from book where publisher in ('굿스포츠', '대한미디어');
select * from book where publisher not in ('굿스포츠', '대한미디어');
select bookname, publisher from book where bookname like '축구의 역사';
select bookname, publisher from book where bookname like '%축구%';
select * from book where bookname like '_구%';
select * from book where bookname like '%축구%' and price >= 20000;
select * from book where publisher = '굿스포츠' or publisher = '대한미디어';

/* 와일드 문자의 종류 */
/* + : 문자열을 연결 */
/* % : 0개 이상의 문자열과 일치 */
/* [] : 1개의 문자와 일치 */
/* [^] : 1개의 문자와 불일치 */
/* _ : 특정 위치의 1개의 문자와 일치 */

/* 1-3 ORDER BY */ 
select * from book order by bookname;
select * from book order by bookname DESC; /* DESC : 내림차순, ASC : 오름차순 */
select * from book order by price, bookname;
select * from book order by price DESC, publisher ASC;