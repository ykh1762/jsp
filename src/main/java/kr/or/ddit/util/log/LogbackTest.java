package kr.or.ddit.util.log;


import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class LogbackTest {
	// 1. logger 선언.
//	private Logger logger = LoggerFactory.getLogger(class);
//	private Logger logger = LoggerFactory.getLogger("kr.or.ddit.util.log.LogbackTest");
	
	// 템플릿 만들어서 사용.
	private Logger logger = LoggerFactory.getLogger(LogbackTest.class);
	
	public LogbackTest() {
		System.out.println("test");
		logger.trace("trace " + "test");
		logger.debug("debug " + "test");
		logger.info("info " + "test");
		logger.warn("warn " + "test");
		logger.error("error " + "test");
		// logback.xml 에서 설정한 level에 따라 log가 출력됨.
		// <logger name="kr.or.ddit" level="info"/>
		
		
		logger.error("error " + "test");
		logger.error("error {}", "test");
		logger.error("error {}, {}, {}", "test", "test2", new HashMap());
		// 문자열 +를 다르게 사용.
		
	}
	
	public static void main(String[] args) {
		LogbackTest logbackTest = new LogbackTest();
		
	}
}















