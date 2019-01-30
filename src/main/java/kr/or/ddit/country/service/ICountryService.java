package kr.or.ddit.country.service;

import java.util.List;

import kr.or.ddit.country.model.CountryVo;
import kr.or.ddit.lprod.model.LprodVo;

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
}
