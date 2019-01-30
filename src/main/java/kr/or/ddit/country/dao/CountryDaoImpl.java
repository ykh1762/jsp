package kr.or.ddit.country.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.or.ddit.country.model.CountryVo;
import kr.or.ddit.db.mybatis.MybatisSqlSessionFactory;
import kr.or.ddit.lprod.model.LprodVo;

public class CountryDaoImpl implements ICountryDao{
	/**
	 * 
	 * Method : getAllCountry
	 * 작성자 : PC19
	 * 변경이력 :
	 * @return
	 * Method 설명 : 전체 나라 정보 조회.
	 */
	@Override
	public List<CountryVo> getAllCountry() {
		SqlSessionFactory sqlSessionFactory = MybatisSqlSessionFactory.getSqlSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		List<CountryVo> countryList = sqlSession.selectList("country.getAllCountry");
		sqlSession.close();
		
		return countryList;
	}

}
