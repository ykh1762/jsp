package kr.or.ddit.util;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class UtilTest {

	@Before
	public void setUp() throws Exception {
	}

	/**
	 * 
	 * Method : testCookieStringParsing
	 * 작성자 : PC19
	 * 변경이력 :
	 * Method 설명 : cookie 문자열 파싱 테스트.
	 */
	@Test
	public void testCookieStringParsing() {
		/***Given***/
		String cookieString = "userId=brown; rememberme=y; test=value";
		CookieUtil cookieUtil = new CookieUtil(cookieString);
		
		/***When***/
		String cookieValue = cookieUtil.getCookieValue("rememberme");
		String cookieValue2 = cookieUtil.getCookieValue("userId");
		String cookieValue3 = cookieUtil.getCookieValue("test");
		
		System.out.println(cookieValue);
		System.out.println(cookieValue2);
		System.out.println(cookieValue3);
		
		/***Then***/
		assertEquals("y", cookieValue);
		assertEquals("brown", cookieValue2);
		assertEquals("value", cookieValue3);
		
	}

	/**
	 * 
	 * Method : testGetFileNameFromPart
	 * 작성자 : PC19
	 * 변경이력 :
	 * Method 설명 : part의 Content-Disposition 헤더로부터 fileName 가져오기.
	 */
	@Test
	public void testGetFileNameFromPart(){
		/***Given***/
		String contentDisposition = "form-data; name=\"uploadFile\"; filename=\"cony.png\"";
		String contentDisposition2 = "form-data; name=\"uploadFile\"; filename=\"sally.png\"";
		// form-data; name="uploadFile"; filename="cony.png"
		
		/***When***/
		String fileName = PartUtil.getFileNameFromPart(contentDisposition);
		String fileName2 = PartUtil.getFileNameFromPart(contentDisposition2);
		
		/***Then***/
		assertEquals("cony.png", fileName);
		assertEquals("sally.png", fileName2);
		
	}
	
	
}
















