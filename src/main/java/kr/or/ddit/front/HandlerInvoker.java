package kr.or.ddit.front;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 
 * handlerInvoker.java
 *
 * @author PC19
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *
 * 수정자 수정내용
 * ------ ------------------------
 * PC19 최초 생성
 * controller 실행, 실행 결과로 리턴된 view 정보를 리턴.
 * </pre>
 */
public class HandlerInvoker {
	// SPRING 환경 비슷하게 만드는중.
	public String invoke(HttpServletRequest req, HttpServletResponse resp, CommonController controller){
		String viewInfo = controller.process(req, resp);
		
		return viewInfo;
	}
	
	// 사용자 입력 -> SPRING invoker -> vo binding을 편하게.
	public void doPost(HttpServletRequest req, HttpServletResponse resp){
		// userVo 파라미터를 통해 생성
		// . . .
	}
	
	
}















