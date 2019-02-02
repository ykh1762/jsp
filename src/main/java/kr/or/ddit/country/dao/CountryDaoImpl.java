package kr.or.ddit.country.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.or.ddit.country.model.CountryVo;
import kr.or.ddit.db.mybatis.MybatisSqlSessionFactory;
import kr.or.ddit.lprod.model.LprodVo;
import kr.or.ddit.user.model.UserVo;
import kr.or.ddit.util.model.PageVo;

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

	/**
	 * 
	 * Method : selectCountry
	 * 작성자 : PC19
	 * 변경이력 :
	 * @param country_iso_code
	 * @return
	 * Method 설명 : 특정 국가 조회.
	 */
	@Override
	public CountryVo selectCountry(String country_iso_code) {
		SqlSessionFactory sqlSessionFactory = MybatisSqlSessionFactory.getSqlSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		CountryVo countryVo = sqlSession.selectOne("country.selectCountry", country_iso_code);
		sqlSession.close();
		
		return countryVo;
	}

	/**
	 * 
	 * Method : selectCountryPagingList
	 * 작성자 : PC19
	 * 변경이력 :
	 * @param countryVo
	 * @return
	 * Method 설명 : 국가 페이징 리스트 조회.
	 */
	@Override
	public List<CountryVo> selectCountryPagingList(PageVo pageVo) {
		SqlSessionFactory sqlSessionFactory = MybatisSqlSessionFactory.getSqlSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		List<CountryVo> countryList = sqlSession.selectList("country.selectCountryPagingList", pageVo);
		sqlSession.close();
		
		return countryList;
	}

	/**
	 * 
	 * Method : getCountryCnt
	 * 작성자 : PC19
	 * 변경이력 :
	 * @return
	 * Method 설명 : 전체 국가 수 조회.
	 */
	@Override
	public int getCountryCnt() {
		SqlSessionFactory sqlSessionFactory = MybatisSqlSessionFactory.getSqlSessionFactory();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		int countryCnt = sqlSession.selectOne("country.getCountryCnt");
		sqlSession.close();
		
		return countryCnt;
	}

}
