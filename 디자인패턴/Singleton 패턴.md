# 1. 싱글톤이란
> 객체의 인스턴스가 단 하나만 생성되는 패턴이다.

- 주로 하나의 인스턴스로 공유하여 사용할 때 사용한다.
  - 예) DB 커넥션 풀, TCP Socket에서의 connnect객체, 스프링 컨테이너의 빈 등
- 하나의 인스턴스를 공유해서 사용하기 때문에 메모리의 낭비를 줄일 수 있다.
- 하지만 반대로 하나의 인스턴스를 공유하기 때문에 데이터의 변경 등의 문제가 발생할 수 있기 때문에 주의해서 개발해야 한다.

# 2. 어떻게 만들까?
- 자기 자신을 필드에 가지고 있어야 한다
- 다른 곳에서 생성할 수 없도록 생성자를 `private`으로 막아야 한다.
- 객체가 필요할 경우, 특정 메서드를 통해 객체를 반환해준다.

# 3. 코드로 알아보기

```java
public class SocketClient {

    private static SocketClient socketClient = null;

    // 다른 곳에서 생성할 수 없도록 기본 생성자를 private으로 막아야 한다.
    private SocketClient() {}

    // 요청을 하면 생성된 객체를 반환해준다.
    public static SocketClient getInstance() {
        if (socketClient == null) socketClient =  new SocketClient();
        return socketClient;
    }

    public void connect(String uri) {
        System.out.println("connect to " + uri);
    }
}
```

```java
public class A {

    private SocketClient socketClient;

    public A() {
        this.socketClient = SocketClient.getInstance();
    }

    public SocketClient getSocketClient() {
        return this.socketClient;
    }
}


public class B {

    private SocketClient socketClient;

    public B() {
        this.socketClient = SocketClient.getInstance();
    }

    public SocketClient getSocketClient() {
        return this.socketClient;
    }
}
```

#### 그럼 두 클래스(A, B)가 얻은 SocketClient가 같은 지 다른지 확인해보면 되겠다.

```java
public class SingletonEx {
    public static void main(String[] args) {

        A a = new A();
        B b = new B();

        SocketClient aSocket = a.getSocketClient();
        SocketClient bSocket = b.getSocketClient();

        System.out.println("aSocket : " + aSocket);
        System.out.println("bSocket : " + bSocket);
        System.out.println("isSame? : " + aSocket.equals(bSocket));
    }
}

// aSocket : singleton.SocketClient@7a5d012c
// bSocket : singleton.SocketClient@7a5d012c
// isSame? : true
```

- 여기서는 `getInstance`를 요청하면 null 체크를 한 후, null 일 경우 객체를 생성해서 반환해줬는데<br/>
- 아래와 같이 애초에 선언하면서 초기화를 하고 getInstance 요청 시 바로 리턴해 주는 방법도 있다

```java
private static SocketClient socketClient = new SocketClient();

 ...
 
public static SocketClient getInstance() {
    return socketClient;
}
```

## 4\. 멀티 쓰레드 환경에서의 싱글톤
참고: [https://blog.hexabrain.net/394](https://blog.hexabrain.net/394)