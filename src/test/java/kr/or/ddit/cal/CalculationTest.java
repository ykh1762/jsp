package kr.or.ddit.cal;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class CalculationTest {
	private Calculation cal;
	
	// @Before 어노테이션은 @Test 어노테이션이 적용된 테스트 메서드를 실행하기 전에 매번
	// 실행된다.
	@Before
	public void setup(){
		System.out.println("setup.");
		cal = new Calculation();
	}
	
	@After
	public void tearDown(){
		System.out.println("tearDown.");
	}
	
	// @Test 어노테이션이 붙은 메서드를 테스트 메서드라고 한다.
	// 테스트 메서드 명명 규칙 : test + 테스트 대상 메서드.
	// ex) sum --> testSum
	// 성공 : 1.테스트 메소드가 예외 발생없이 정상적으로 실행된 경우.
	// 		2. assert관련 메서드가 있을경우 assert구문을 정상적으로 통과.
	@Test
	public void testSum() {
		// sum 메소드 테스트.
		int result = cal.sum(10, 5);
		
		// 예상되는 결과 값은 15. (스태틱 임포트 -> 스태틱 메서드 호출시 클래스명 생략가능)
		assertEquals(15, result);
	}
	
	@Test
	public void testSum_scenario2() {
		// sum 메소드 테스트.
		int result = cal.sum(-10, 5);
		
		// 예상되는 결과 값은 -5.
		assertEquals(-5, result);
	}
	
	@Test
	public void testMul(){
		/***Given***/
		
		/***When***/
		int result = cal.mul(5, 10);
		
		/***Then***/
		assertEquals(50, result);
	}

	@Test
	public void testDiv(){
		/***Given***/
		
		/***When***/
		int result = cal.div(10, 5);
		
		/***Then***/
		assertEquals(2, result);

	}
	
	@Test
	public void testDiv_divByZero(){
		/***Given***/
		
		/***When***/
		int result = cal.div(10, 0);
		
		/***Then***/
		assertEquals(0, result);
		
	}
	
	@Test
	public void testEfficentSum(){
		int sum = 0;
		int int_start = 1;
		int int_end = 10;
		
		sum = (int_end*(int_end+1))/2 - ((int_start*(int_start+1)/2) - int_start);
		
		assertEquals(55, sum);
	}
	
	@Test
	public void testSub(){
		/***Given***/
		
		/***When***/
		int result = cal.sub(10, 5);
		
		/***Then***/
		assertEquals(5, result);
	}
	
	// TDD : Test Driven Development. 테스트 주도 개발.
	
}
















