package kr.or.ddit.front;

import java.util.HashMap;
import java.util.Map;

import kr.or.ddit.user.model.UserVo;

/**
 * 
 * HandlerMapper.java
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
 *	uri 정보를 바탕으로 해당 요청을 처리해줄 컨트롤러를 생성, 반환해주는 객체.
 * </pre>
 */
public class HandlerMapper {
	// Map<url 문자열, url 요청을 처리할 컨트롤러 클래스명>
	private Map<String, String> urlControllerMap;
	
	public HandlerMapper() {
		// db or properties에서 데이터를 조회해야하지만 테스트 목적으로 직접 넣어줌.
		 urlControllerMap = new HashMap<String, String>();
		 
		 urlControllerMap.put("/userList.do", "kr.or.ddit.front.UserListController");
		 urlControllerMap.put("/rangersList.do", "kr.or.ddit.front.RangersListController");
	}
	
	/**
	 * 
	 * Method : getController
	 * 작성자 : PC19
	 * 변경이력 :
	 * @param uri
	 * @return
	 * Method 설명 : uri 요청을 처리해줄 pojo controller 리턴.
	 */
	public CommonController getController(String uri){
		String classInfo = urlControllerMap.get(uri);
		
		// 인스턴스를 생성하는 방법.
		// 1. Integer i = new Integer(); // 객체를 생성하기 위해서 new 연산자 사용.
		// String msg = "msg"; // ""로 생성하는 예외적인 케이스.
		// 2. class 정보를 이용하여 객체를 생성 : 문자열 -> 클래스를 생성.
		
		//UserVo userVo = new UserVo();
		
		//Class class = Class.forName(classInfo); (X)
		// keyword를 피해서 class -> clazz, this -> that.
		
		CommonController controller = null;
		try {
			Class clazz = Class.forName(classInfo);
			// --------------- 이어서 작업진행. -------------------
			// if 보다는 interface를 사용. (if를 쓰면 기능이 추가될때마다 코드를 수정해야함.)
//			if(uri.equals("/userList.do")){
//				UserListController controller = (UserListController) clazz.newInstance();
//			}else if(uri.equals("/rangersList.do")){
//				RangersListController controller = (RangersListController) clazz.newInstance();				
//			} . . .
			
			// 각각의 컨트롤러에 interface CommonController를 구현시킴.
			// ?
			controller = (CommonController) clazz.newInstance();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} 
		
		return controller;
	}
	
	
	
	
}
















