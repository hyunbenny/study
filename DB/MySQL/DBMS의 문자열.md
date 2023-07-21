일부 DBMS는 CHAR와 VARCHAR는 영문자 기준 1Byte를 할당, NCHAR와 NVARCHAR는 유니코드를 기준으로 2Byte를 할당한다.<br/>
그래서 영문자만 입력가능한 컬럼에는 CHAR 혹은 VARCHAR를 사용하고, 한글을 입력할 컬럼은 NCHAR나 NVARCHAR를 사용한다.<br/>


MySQL의 경우, CHAR, VARCHAR 모두 `UTF-8`을 사용하기 때문에 영문, 숫자, 기호는 `1Byte`, 한글, 일본어 등은 `3Byte`를 `내부적으로` 할당한다.<br/>
따라서 MySQL을 사용할 때는 굳이 NCAHR, NVARCHAR를 사용할 필요가 없다.<br/>

```sql
CREATE TABLE users (
    user_id CHAR(10) NOT NULL PRIMARY KEY,
    user_name CHAR(20) NOT NULL
);
```
위의 쿼리를 보면  user_id와 user_name은 영문, 한글 상관없이 각각 10글자, 20글자까지 입력할 수 있다.
- MySQL이 내부적으로 이 공간을 할당하는 것이므로 우리는 신경안써도 된다.  

#### 근데 그러면 CHAR와 VARCHAR는 뭐가 다를까? 
> CHAR 고정형 </br>
> VARCHAR 가변형

위에서 봤던 user_id를 보면 CHAR(10)이다.

이 경우 10글자가 넘는 데이터가 들어오게 되면 잘린다. 

그럼 VARCHAR(10)으로 선언하면?

VARCHAR도 잘린다. 

#### 그럼 똑같은 거 아니냐? 
정해놓은 크기를 초과했을 때 잘리는 건 똑같지만 정해진 크기보다 적게 들어오는 경우에 다르다.

CHAR(10)의 경우, 2Byte가 들어와도 10Byte를 할당하지만<br/>
VARCHAR(10)은 2Byte가 들어오면 2Byte만 할당한다.

#### 그럼 VARCHAR만 사용하면 되겠네?
CHAR는 데이터 사이즈가 고정되어 있기 때문에 조회 속도가 더 빠르다. 
실무를 하다보면 항상 고정된 길이가 들어가는 컬럼들이 있다. 
내부적으로 사용하는 회원의 id값이라거나, 주문번호 등.. 항상 일정한 포맷으로 같은 길이의 값이 들어오는 컬럼의 경우 사용하면 될 것 같다.