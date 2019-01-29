package kr.or.ddit.user.service;

import java.util.List;

import kr.or.ddit.user.model.UserVo;

public interface IUserService {

	/**
	 * 
	 * Method : getAllUser
	 * 작성자 : PC19
	 * 변경이력 :
	 * @return
	 * Method 설명 : 전체 사용자 정보 조회.
	 */
	List<UserVo> getAllUser();
	
	/**
	 * 
	 * Method : selectUser
	 * 작성자 : PC19
	 * 변경이력 :
	 * @return
	 * Method 설명 : 특정 사용자 조회.
	 */
	UserVo selectUser(String userId);
	
}
