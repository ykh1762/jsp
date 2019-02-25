package test;

public class Hello {

	public static void main(String[] args) {
		System.out.println("Hello, Java");
	}
	
}

//asdfasdf

//<Java의 정석>
//3rd Edition / 남궁 성 / 도우출판 / 2016
/*		
		<<목차>>
Chap.01 자바를 시작하기 전에

Chap.02 Variable(변수)

Chap.03 Operator(연산자)

Chap.04 조건문과 반복문

Chap.06 객체지향 프로그래밍 I

Chap.07 객체지향 프로그래밍 II



		<<목차II>>
		
Chap.01 자바를 시작하기 전에

Chap.02 Variable(변수) (★★)
	1. 변수와 상수
20		1.1

	2. 변수의 타입
27		2.1 primitive type(기본형)

Chap.03 Operator(연산자) (★★)
	1. operator(연산자)
86		1.1

	3. 산술 연산자
	4. 비교 연산자
	5. 논리 연산자

88		1.4 연산자의 우선순위와 결합규칙

	2. 단항 연산자
93		2.1 증감 연산자 ++ --

Chap.04 조건문과 반복문 (★★)
	1. 조건문
	2. 반복문
Chap.05 Array(배열) (★★)

Chap.06 객체지향 프로그래밍 I (★★★)
	1. 객체지향언어
230		1.1 객체지향언어의 역사
230		1.2 객체지향언어	
	2. 클래스와 객체
231		2.1 클래스와 객체의 정의와 용도
232		2.2 객체와 인스턴스
233		2.3 객체의 구성요소 - 속성과 기능

		2.6
	3. 변수와 메서드
246		3.1 선언위치에 따른 변수의 종류	
247		3.2 클래스 변수와 인스턴스 변수	

278		3.11 클래스 메서드(static 메서드)와 인스턴스 메서드
	
	4. overloading(오버로딩)
	
	5. constructor(생성자)
291		5.1 생성자란?
	
295		5.4 생성자에서 다른 생성자 호출하기 - this(), this
	6. 변수의 초기화
	
Chap.07 객체지향 프로그래밍 II
	1. inheritance(상속)
310		1.1 상속의 정의와 장점
	2. overriding(오버라이딩)
327		2.1 오버라이딩이란?
	3. package와 import
336		3.1
	4. modifier(제어자)
344		4.1
	5. polymorphism(다형성)
354		5.1
	6. abstract class(추상 클래스)
375		6.1
	7. interface(인터페이스)
381		7.1
	8. inner class(내부 클래스)
403		8.1
	
Chap.
Chap.
Chap.10
Chap.
Chap.
Chap.
Chap.
Chap.
Chap.16



		<<III>>>
		
Chap.01 

Chap.02 Variable(변수)
	1.
20		1.1

	2. 변수의 타입
28		2.1 primitive type(기본형)
	- 자료형			값의 범위		byte
	 boolean	false, true		1
	 char		0~65535			2
	 
	 byte		-128~127		1
	 short		약 ±3만			2
	 int		약 ±21억			4
	 long		엄청큼(경 이상)		8
	 
	 float		큼				4
	 double		큼				8
	 

Chap.03 Operator(연산자)
	1. operator(연산자)
86		1.1

88		1.4 연산자의 우선순위와 결합규칙
	- (우선순위 높음)					(우선순위 낮음)
		산술 연산자 - 비교 연산자 - 논리 연산자 - 대입 연산자

	2. 단항 연산자
93		2.1 증감 연산자 ++ --
	- 증가 연산자 '++'와 감소 연산자 '--'는 피연산자의 양쪽 모두에 올 수 있다. 피연산자의 왼쪽에 위치하면 'prefix(전위형)',
	 

Chap.06 객체지향 프로그래밍 I
	1.
	
	5. constructor(생성자)
291		5.1

295		5.4 생성자에서 다른 생성자 호출하기 - this(), this
	- this와 this()는 비슷하게 생겼을 뿐 완전히 다른 것이다. this는 '참조 변수'이고, this()는 '생성자'이다.
	
298		5.5 생성자를 이용한 인스턴스의 복사
	- 현재 사용하고 있는 인스턴스와 같은 상태를 갖는 인스턴스를 하나 더 만들고자 할 때 생성자를 이용할 수 있다.
		Car(Car c){
			color = c.color;
			gearType = c.gearType;
			door = c.door;
		}
		이렇게 생성자를 만든 뒤, main 메서드에서
		Car c1 = new Car();
		Car c2 = new Car(c1);
		이렇게 하면 c1와 같은 인스턴스변수를 갖는 인스턴스 c2를 만들 수 있다. (매개변수에는 인스턴스 c1을 가리키는
		참조변수 c1을 넣는다.)

Chap.07 객체지향 프로그래밍 II
	1. inheritance(상속)
310		1.1 상속의 정의와 장점
	- 상속이란, 기존의 클래스를 재사용하여 새로운 클래스를 작성하는 것이다. 상속을 통해서 클래스를 작성하면 보다 적은 양의
	 코드로 새로운 클래스를 작성할 수 있고 코드를 공통적으로 관리할 수 있기 때문에 코드의 추가 및 변경이 매우 용이하다.
	- class Child extends Parent{
	
	  }
	- 자손 클래스(자식)는 조상 클래스(부모)의 모든 멤버를 상속받기 때문에, Child클래스는 Parent클래스의 멤버들을 포
	 함한다고 할 수 있다. -> Parent ⊂ Child. Parent ← Child.
	- 만일 Parent클래스에 age라는 정수형 변수를 멤버변수로 추가하면, 자손 클래스는 조상의 멤버를 모두 상속받기 때문에,
	 Child클래스는 자동적으로 age라는 멤버변수가 추가된 것과 같은 효과를 얻는다.
	- 생성자와 초기화 블럭은 상속되지 않는다. 멤버만 상속된다.
	- 자식 클래스의 멤버 개수는 부모 클래스보다 항상 같거나 많다. 


*/