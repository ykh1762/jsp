package kr.or.ddit.lprod.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.or.ddit.db.mybatis.MybatisSqlSessionFactory;
import kr.or.ddit.lprod.model.LprodVo;
import kr.or.ddit.prod.model.ProdVo;
import kr.or.ddit.user.model.UserVo;

public class LprodDaoImpl implements ILprodDao{

	/**
	 * 
	 * Method : getAllLprod
	 * 작성자 : PC19
	 * 변경이력 :
	 * @return
	 * Method 설명 : 전체 lprod 정보 조회.
	 */
	@Override
	public List<LprodVo> getAllLprod() {
		SqlSessionFactory sqlSessionFactory = MybatisSqlSessionFactory.getSqlSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		List<LprodVo> lprodList = sqlSession.selectList("lprod.getAllLprod");
		sqlSession.close();
		
		return lprodList;
	}

	/**
	 * 
	 * Method : selectLprod
	 * 작성자 : PC19
	 * 변경이력 :
	 * @return
	 * Method 설명 : 특정 카테고리의 prodList 조회.
	 */
	@Override
	public List<ProdVo> selectLprod(String lprod_gu) {
		SqlSessionFactory sqlSessionFactory = MybatisSqlSessionFactory.getSqlSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		List<ProdVo> prodList = sqlSession.selectList("lprod.selectLprod", lprod_gu);
		sqlSession.close();
		
		return prodList;
	}
	

}
















