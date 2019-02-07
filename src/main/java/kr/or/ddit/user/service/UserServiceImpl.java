package kr.or.ddit.user.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.user.dao.IUserDao;
import kr.or.ddit.user.dao.UserDaoImpl;
import kr.or.ddit.user.model.UserVo;
import kr.or.ddit.util.model.PageVo;

public class UserServiceImpl implements IUserService {

	private IUserDao userDao;
	
	public UserServiceImpl(){
		userDao = new UserDaoImpl();
	}
	
	/**
	 * 
	 * Method : getAllUser
	 * 작성자 : PC19
	 * 변경이력 :
	 * @return
	 * Method 설명 : 전체 사용자 정보 조회.
	 */
	@Override
	public List<UserVo> getAllUser() {
		return userDao.getAllUser();
	}

	/**
	 * 
	 * Method : selectUser
	 * 작성자 : PC19
	 * 변경이력 :
	 * @return
	 * Method 설명 : 특정 사용자 조회.
	 */
	@Override
	public UserVo selectUser(String userId) {
		return userDao.selectUser(userId);
	}

	/**
	 * 
	 * Method : selectUserPagingList
	 * 작성자 : PC19
	 * 변경이력 :
	 * @param pageVo
	 * @return
	 * Method 설명 : 사용자 페이징 리스트 조회.
	 */
	@Override
	public Map<String, Object> selectUserPagingList(PageVo pageVo) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		resultMap.put("userList", userDao.selectUserPagingList(pageVo));
		resultMap.put("userCnt", userDao.getUserCnt());
		// lastPage를 알기위해 userCnt를 구함.
		
		return resultMap;
	}

}

















