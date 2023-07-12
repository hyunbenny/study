DROP DATABASE IF EXISTS sample;
CREATE DATABASE sample;
COMMIT;

USE sample;

CREATE TABLE users (
                       user_id VARCHAR(8) NOT NULL PRIMARY KEY,
                       user_name VARCHAR(10) NOT NULL,
                       birth_year INT NOT NULL,
                       city CHAR(2) NOT NULL, -- 서울, 경기, 경북, 경남, 부산, 울산 등
                       phone_number1 CHAR(3), -- 핸드폰 번호 앞자리 : 010, 011, 016, 017 둥
                       phone_number2 CHAR(8), -- 핸드폰 번호 뒷자리(하이픈 제외)
                       created_at DATE -- 회원가입일
);


CREATE TABLE orders(
                       order_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
                       user_id VARCHAR(8) NOT NULL,
                       product_name CHAR(6) NOT NULL, -- 상품명
                       group_name CHAR(4), -- 분류
                       price INT NOT NULL, -- 단가(원)
                       amount SMALLINT NOT NULL, -- 수량
                       FOREIGN KEY (user_id) REFERENCES users(user_id)
);

COMMIT;

-- 리눅스에서는 데이터베이스 이름과 테이블 이름 모두 소문자로 사용해야 하므로, 환경에 상관없이 사용하기 위해서 소문자로 만들자.


INSERT INTO users VALUES('testA', 'TesterA', 1978, '서울', '010', '12341111', '2012-1-13');
INSERT INTO users VALUES('testB', 'TesterB', 2008, '제주', '010', '11112222', '2020-12-11');
INSERT INTO users VALUES('testC', 'TesterC', 1963, '울산', '010', '12341234', '2021-11-25');
INSERT INTO users VALUES('testD', 'TesterD', 1999, '경기', '010', '12349999', '2022-4-20');
INSERT INTO users VALUES('testE', 'TesterE', 1990, '충북', '010', '77778888', '2019-3-14');
INSERT INTO users VALUES('testF', 'TesterF', 2002, '전북', '010', '44441111', '2019-2-30');
INSERT INTO users VALUES('testG', 'TesterG', 1989, '경남', '010', '12345678', '2016-7-4');
INSERT INTO users VALUES('testH', 'TesterH', 1985, '부산', '010', '98765432', '2017-12-9');

INSERT INTO users VALUES('userA', 'UserA', 1978, '서울', '011', '12341111', '2012-1-13');
INSERT INTO users VALUES('userB', 'UserB', 2008, '제주', '011', '11112222', '2020-12-11');
INSERT INTO users VALUES('userC', 'UserC', 1963, '울산', '018', '12341234', '2021-11-25');
INSERT INTO users VALUES('userD', 'UserD', 1999, '경기', '017', '12349999', '2022-4-20');
INSERT INTO users VALUES('userE', 'UserE', 1990, '충북', '010', '77778888', '2019-3-14');
INSERT INTO users VALUES('userF', 'UserF', 2002, '전북', '010', '44441111', '2019-2-28');
INSERT INTO users VALUES('userG', 'UserG', 1989, '경남', '016', '12345678', '2016-7-4');
INSERT INTO users VALUES('userH', 'UserH', 1985, '부산', '010', '98765432', '2017-12-9');



INSERT INTO orders VALUES(NULL, 'testA', '축구화', NULL, 250000, 1);
INSERT INTO orders VALUES(NULL, 'testA', '노트북', '전자기기', 2300000, 1);
INSERT INTO orders VALUES(NULL, 'testB', '모니터', '전자기기', 500000, 1);
INSERT INTO orders VALUES(NULL, 'testC', '청바지', '의류', 30000, 1);
INSERT INTO orders VALUES(NULL, 'testE', '책', '도서', 15000, 2);
INSERT INTO orders VALUES(NULL, 'testB', '티셔츠', '의류', 20000, 5);
INSERT INTO orders VALUES(NULL, 'testH', '책', '도서', 20000, 1);
INSERT INTO orders VALUES(NULL, 'testF', '마우스', '전자기기', 70000, 1);
INSERT INTO orders VALUES(NULL, 'testF', '텀블러', NULL, 27000, 1);
INSERT INTO orders VALUES(NULL, 'testE', '운동화', NULL, 97000, 1);
INSERT INTO orders VALUES(NULL, 'testD', '메모리카드', '전자기기', 17000, 10);
INSERT INTO orders VALUES(NULL, 'testD', '펜', NULL, 3000, 50);