package kr.or.ddit.user.dao;

import static org.junit.Assert.*;

import java.util.List;

import kr.or.ddit.user.model.UserVo;

import org.junit.Before;
import org.junit.Test;

public class UserDaoImplTest {

	// getAllUser 메서드를 테스트하는 메서드 작성.
	@Test
	public void testGetAllUser() {
		/***Given***/
		IUserDao userDao = new UserDaoImpl();
		
		/***When***/
		List<UserVo> userList = userDao.getAllUser();
		for(UserVo userVo : userList){
			System.out.println(userVo);
		}
		
		/***Then***/
		assertNotNull(userList);
		assertEquals(5, userList.size());

	}
	
	// selectUser 메서드를 테스트하는 메서드 작성.
	@Test
	public void testSelectUser() {
		/***Given***/
		IUserDao userDao = new UserDaoImpl();
		
		/***When***/
		UserVo user = userDao.selectUser("brown");
		System.out.println("user : " + user);
		
		/***Then***/
		assertNotNull(user);
		
	}

}
