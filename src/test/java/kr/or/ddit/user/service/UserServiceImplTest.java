package kr.or.ddit.user.service;

import static org.junit.Assert.*;

import java.util.List;

import kr.or.ddit.user.dao.IUserDao;
import kr.or.ddit.user.dao.UserDaoImpl;
import kr.or.ddit.user.model.UserVo;

import org.junit.Before;
import org.junit.Test;

public class UserServiceImplTest {

	// getAllUser 메서드를 테스트하는 메서드 작성.
	@Test
	public void testGetAllUser() {
		/***Given***/
		IUserService userService = new UserServiceImpl();
		
		/***When***/
		List<UserVo> userList = userService.getAllUser();
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
