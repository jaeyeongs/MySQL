# SQL Study

환경 : MySQL

![image](https://user-images.githubusercontent.com/87981867/140941119-c9dae1aa-6325-4d4d-9c2d-9e42fa5da05b.png)

## Day1

### (1) DB 구축

- 마당(madang)서점 데이터베이스 구축 : demo_madang.sql

### (2) SELECT 문 : SQL01

- SELECT 문의 구성요소
- SELECT 문의 기본 문법
- SELECT/FROM
- WHERE 조건
- ORDER BY

### (3) 집계 함수와 GROUP BY : SQL02

- 집계 함수(SUM, AVG, COUNT, MIN, MAX)
- GROUP BY
- HAVING 절

## Day2

### (1) 조인 : SQL03

- 두 개 이상 테이블에서의 SQL 질의
- 두 개 테이블을 합치기
- 일반 조인 : AND 조건, INNER JOIN
- 외부 조인 : 테이블1 (LEFT, RIGHT, FULL) OUTER JOIN 테이블2 ON

### (2) 부속질의 : SQL03

- SQL문 내에 또 다른 SQL문
- 상관 부속질의 : 상위 부속질의의 투플을 이용하여 하위 부속질의를 계산
- b1 : 상위, b2 : 하위

### (3) 집합 연산 : SQL03

- 합집합 : UNION
- 차집합 : MINUS(MySQL에서는 지원하지 않음)
- 교집합 : INTERSECT(MySQL에서는 지원하지 않음)
- {고객 이름} = {대한민국에 거주하는 고객이름} U {도서를 주문한 고객 이름}

### (4) EXISTS : SQL03

- 원래 단어에서 의미하는 것과 같이 조건에 맞는 튜플이 존재하면 결과에 포함
- 부속질의문의 어떤 행이 조건에 만족하면 참(True)
