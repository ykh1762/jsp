package kr.or.ddit.country.dao;

import java.util.List;

import kr.or.ddit.country.model.CountryVo;

public interface ICountryDao {
	/**
	 * 
	 * Method : getAllCountry
	 * 작성자 : PC19
	 * 변경이력 :
	 * @return
	 * Method 설명 : 전체 나라 정보 조회.
	 */
	List<CountryVo> getAllCountry();
}
