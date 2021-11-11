# SQL Study

환경 : MySQL

![image](https://user-images.githubusercontent.com/87981867/140941119-c9dae1aa-6325-4d4d-9c2d-9e42fa5da05b.png)

## Day1 : SQL01 ~ SQL02

### (1) DB 구축

- 마당(madang)서점 데이터베이스 구축 : demo_madang.sql

### (2) SELECT 문

- SELECT 문의 구성요소
- SELECT 문의 기본 문법
- SELECT/FROM
- WHERE 조건
- ORDER BY

### (3) 집계 함수와 GROUP BY 

- 집계 함수(SUM, AVG, COUNT, MIN, MAX)
- GROUP BY
- HAVING 절

## Day2 : SQL03

### (1) 조인

- 두 개 이상 테이블에서의 SQL 질의
- 두 개 테이블을 합치기
- 일반 조인 : AND 조건, INNER JOIN
- 외부 조인 : 테이블1 (LEFT, RIGHT, FULL) OUTER JOIN 테이블2 ON

### (2) 부속질의

- SQL문 내에 또 다른 SQL문
- 상관 부속질의 : 상위 부속질의의 투플을 이용하여 하위 부속질의를 계산
- b1 : 상위, b2 : 하위

### (3) 집합 연산

- 합집합 : UNION
- 차집합 : MINUS(MySQL에서는 지원하지 않음)
- 교집합 : INTERSECT(MySQL에서는 지원하지 않음)
- {고객 이름} = {대한민국에 거주하는 고객이름} U {도서를 주문한 고객 이름}

### (4) EXISTS

- 원래 단어에서 의미하는 것과 같이 조건에 맞는 튜플이 존재하면 결과에 포함
- 부속질의문의 어떤 행이 조건에 만족하면 참(True)

## Day3 : SQL04 ~ SQL05

### 데이터 정의어(DDL)

### (1) CREATE 문

- 테이블 구성, 속성과 속성에 관한 제약 정의, 기본키 및 외래키를 정의하는 명령
- PRIMARY KEY : 기본키를 정할 때 사용
- FOREIGN KEY : 외래키를 지정할 때 사용
- ON UPDATE & ON DELETE : 외래키 속성의 수정과 튜플 삭제 시 동작을 나타냄
- CREATE TABLE 테이블이름

### (2) 데이터 정의어(DDL) - ALTER 문

- 생성된 테이블의 속성과 속성에 관한 제약을 변경하며, 기본키 및 외래키를 변경
- ADD & DROP : 속성을 추가하거나 제거
- MODIFY : 속성의 기본값을 설정하거나 삭제

### (3) 데이터 정의어(DDL) - DROP 문

- 테이블을 삭제하는 명령
- DROP 문은 테이블의 구조와 데이터를 모두 삭제, 데이터만 삭제할시 DELETE 문 사용
- DROP TABLE 테이블 이름

### 데이터 조작어(DML) 

### (1) INSERT 문

- 테이블에 새로운 튜플 삽입하는 명령
- INSERT INTO 테이블 VALUES (값)
- 대량삽입(bulk insert) : 한꺼번에 여러 개의 튜플을 삽입하는 방법

### (2) UPDATE 문

- 특정 속성 값을 수정하는 명령
- UPDATE 테이블 SET 속성이름 [WHERE 조건]

### (3) DELETE 문

- 테이블에 있는 기존 튜플을 삭제하는 명령
- DELETE FROM 테이블 [WHERE 조건]
