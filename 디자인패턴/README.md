# 1. 디자인 패턴(Design Pattern)이란
> 설계에 자주 사용하는 패턴들을 정형화 하여 유형별로 정해두고 상황에 맞게 사용될 수 있는 문제들을 해결하는데에 쓰이는 서술이나 템플릿을 뜻한다.

# 2. 디자인 패턴의 장점
- 정형화된 구조로 개발자 간 원활한 소통을 가능하게 한다.
- 소프트웨어 구조를 쉽게 파악하는데 도움을 준다.
- 재사용이 가능하여 개발 시간을 단축시키는데 도움을 준다.
- 설계를 변경할 때 유연한 대처가 가능하다.

# 3. 디자인 패턴의 종류

## 3.1 생성 패턴(Creation Pattern)
> 객체를 생성하는 것과 관련된 패턴  <br/>
> 클라이언트와 클라이언트가 생성해야 하는 객체 인스턴스 사이의 연결을 끊어주는 패턴이다.<br/>  
> 객체를 생성하고 변경하는 것이 시스템에 미치는 영향을 최소화하고 코드의 유연성을 높인다.

- 팩토리 메서드(Factory Method) 패턴
- [싱글톤(Singleton) 패턴](https://hyunbenny.tistory.com/138)
- 프로토타입(Prototype) 패턴
- 빌더(Builder) 패턴
- 추상 팩토리(Abstract Factory) 패턴

## 3.2 구조 패턴(Structual Pattern)
> 프로그램의 구조를 설계하는데 활용할 수 있는 패턴  <br/>
> 클래스, 객체 구성을 통해 더 큰 구조를 만들 수 있게 해준다. <br/>
> - 규모가 커질수록 많은 클래스들이 서로 의존관계를 갖게 되는데, 이러한 복잡한 구조를 보다 개발하기 쉽고, 유지보수하기 쉽게 해준다.

- [어댑터(Adapter) 패턴](https://github.com/hyunbenny/study/blob/main/%EB%94%94%EC%9E%90%EC%9D%B8%ED%8C%A8%ED%84%B4/Adapter%ED%8C%A8%ED%84%B4.md)
- 컴포지트(Composite) 패턴
- 브릿지(Bridge) 패턴
- 데코레이터(Decorator) 패턴
- 파사드(Facade) 패턴
- 플라이웨이트(Flyweight) 패턴
- [프록시(Proxy) 패턴](https://hyunbenny.tistory.com/140)

## 3.3 행위 패턴(Behavioral Pattern)
> 클래스와 객체들의 교류 방법에 대해 정의하는 패턴<br/>
> 클래스나 객체 간 상호작용 방법, 어떤 알고리즘을 어떤 객체에 할당할 지 등을 정의하는 패턴<br/>
> 하나의 객체로 수행할 수 없는 작업을 여러 객체로 나누어 결합도를 최소할 수 있도록 한다.

- [템플릿 메서드(Template Method) 패턴](https://github.com/hyunbenny/study/blob/main/%EB%94%94%EC%9E%90%EC%9D%B8%ED%8C%A8%ED%84%B4/Template%20Method%20%ED%8C%A8%ED%84%B4.md)
- 인터프리터(Interpreter) 패턴
- [반복자(Iterator) 패턴](https://github.com/hyunbenny/study/blob/main/%EB%94%94%EC%9E%90%EC%9D%B8%ED%8C%A8%ED%84%B4/Iterator%ED%8C%A8%ED%84%B4.md)
- 옵저버(Observer) 패턴
- 전략(Strategy) 패턴
- 방문자(Visitor) 패턴
- 연쇄책임(Chain of Responsibility) 패턴
- 커맨드(Command) 패턴
- 중재자(Mediator) 패턴
- 상태(State) 패턴
- 메멘토(Memento) 패
