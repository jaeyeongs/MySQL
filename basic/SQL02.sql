/* 2. 집계 함수와 GROUP BY */

/* 2-1 집계 함수 */
select sum(saleprice) from orders;
select sum(saleprice) as 총매출 from orders; /* 의미 있는 열 이름을 출력하고 싶으면 속성이름의 별칭을 지칭하는 AS 키워드를 사용하여 열 이름을 부여한다 */
											/* 최신 버전은 as를 안 붙여도 컬럼명이 설정이 되긴 한다 */
select sum(saleprice) as 총매출 from orders where custid=2; 
select sum(saleprice) as Total,
		avg(saleprice) as Average,
		min(saleprice) as Minimum,
		max(saleprice) as Maximum from orders;
select count(*) from orders;

/* 2-2 GROUP BY */
select custid, count(*) as 도서수량, sum(saleprice) as 총액 from orders group by custid;
select custid, count(*) as 도서수량 from orders where saleprice >= 8000 group by custid having count(*) >= 2;