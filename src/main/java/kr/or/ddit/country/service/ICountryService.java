package kr.or.ddit.country.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.country.model.CountryVo;
import kr.or.ddit.lprod.model.LprodVo;
import kr.or.ddit.util.model.PageVo;

public interface ICountryService {
	/**
	 * 
	 * Method : getAllCountry
	 * 작성자 : PC19
	 * 변경이력 :
	 * @return
	 * Method 설명 : 전체 나라 정보 조회.
	 */
	List<CountryVo> getAllCountry();

	/**
	 * 
	 * Method : selectCountry
	 * 작성자 : PC19
	 * 변경이력 :
	 * @param country_iso_code
	 * @return
	 * Method 설명 : 특정 국가 조회.
	 */
	CountryVo selectCountry(String country_iso_code);

	/**
	 * 
	 * Method : selectCountryPagingList
	 * 작성자 : PC19
	 * 변경이력 :
	 * @param pageVo
	 * @return
	 * Method 설명 : 국가 페이징 리스트, 전체 국가수 리턴.
	 */
	Map<String, Object> selectCountryPagingList(PageVo pageVo);
}













