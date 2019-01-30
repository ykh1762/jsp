package kr.or.ddit.user.dao;

import static org.junit.Assert.*;

import java.util.List;

import kr.or.ddit.user.model.UserVo;
import kr.or.ddit.util.model.PageVo;

import org.junit.Before;
import org.junit.Test;

public class UserDaoImplTest {

	private IUserDao userDao;
	
	@Before
	public void setup(){
		userDao = new UserDaoImpl();
	}
	
	// getAllUser 메서드를 테스트하는 메서드 작성.
	@Test
	public void testGetAllUser() {
		/***Given***/
		
		/***When***/
		List<UserVo> userList = userDao.getAllUser();
//		for(UserVo userVo : userList){
//			System.out.println(userVo);
//		}
		
		/***Then***/
		assertNotNull(userList);
		assertEquals(105, userList.size());

	}
	
	// selectUser 메서드를 테스트하는 메서드 작성.
	@Test
	public void testSelectUser() {
		/***Given***/
		
		/***When***/
		UserVo user = userDao.selectUser("brown");
		System.out.println("user : " + user);
		
		/***Then***/
		assertNotNull(user);
		
	}
	
	/**
	 * 
	 * Method : testSelectUserPagingList
	 * 작성자 : PC19
	 * 변경이력 :
	 * Method 설명 : 사용자 페이징 리스트 조회 테스트
	 */
	@Test
	public void testSelectUserPagingList(){
		/***Given***/
		PageVo pageVo = new PageVo(1, 10);
		
		/***When***/
		List<UserVo> userList = userDao.selectUserPagingList(pageVo);
//		for(UserVo user : userList){
//			System.out.println("page : " + user);
//		}
		
		/***Then***/
		assertNotNull(userList);
		assertEquals(10, userList.size());
		
	}
	
	/**
	 * 
	 * Method : testGetUserCnt
	 * 작성자 : PC19
	 * 변경이력 :
	 * Method 설명 : 사용자 수 조회 테스트
	 */
	@Test
	public void testGetUserCnt(){
		/***Given***/
		
		/***When***/
		int userCnt = userDao.getUserCnt();
		System.out.println("userCnt : " + userCnt);

		/***Then***/
		assertEquals(105, userCnt);
		
	}
	
	/**
	 * 
	 * Method : testPagination
	 * 작성자 : PC19
	 * 변경이력 :
	 * Method 설명 : 페이지 수 구하기.
	 */
	@Test
	public void testPagination(){
		/***Given***/
		int userCnt = 105;
		int pageSize = 10;
		
		/***When***/
		// ceil
		int lastPage = userCnt / pageSize + (userCnt%pageSize > 0 ? 1 : 0);

		/***Then***/
		assertEquals(11, lastPage);
		
	}
	
	@Test
	public void testPagination2(){
		/***Given***/
		int userCnt = 110;
		int pageSize = 10;
		
		/***When***/
		// ceil
		int lastPage = userCnt / pageSize + (userCnt%pageSize > 0 ? 1 : 0);
		
		/***Then***/
		assertEquals(11, lastPage);
		
	}
	
}














