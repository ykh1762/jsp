package kr.or.ddit.user.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.or.ddit.db.mybatis.MybatisSqlSessionFactory;
import kr.or.ddit.user.model.UserVo;

public class UserDaoImpl implements IUserDao{
	
	/**
	 * 
	 * Method : getAllUser
	 * 작성자 : PC19
	 * 변경이력 :
	 * @return
	 * Method 설명 : 전체 사용자 조회.
	 */
	public List<UserVo> getAllUser(){
		SqlSessionFactory sqlSessionFactory = MybatisSqlSessionFactory.getSqlSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		List<UserVo> userList = sqlSession.selectList("user.getAllUser");
		sqlSession.close();
		
		return userList;
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
		SqlSessionFactory sqlSessionFactory = MybatisSqlSessionFactory.getSqlSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		UserVo userVo = sqlSession.selectOne("user.selectUser", userId);
		sqlSession.close();
		
		return userVo;
	}
}
















