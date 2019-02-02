package kr.or.ddit.country.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.country.dao.CountryDaoImpl;
import kr.or.ddit.country.dao.ICountryDao;
import kr.or.ddit.country.model.CountryVo;
import kr.or.ddit.lprod.dao.ILprodDao;
import kr.or.ddit.lprod.dao.LprodDaoImpl;
import kr.or.ddit.util.model.PageVo;

public class CountryServiceImpl implements ICountryService{
	private ICountryDao countryDao;

	public CountryServiceImpl(){
		countryDao = new CountryDaoImpl();
	}
	
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
		return countryDao.getAllCountry();
	}

	@Override
	public CountryVo selectCountry(String country_iso_code) {
		return countryDao.selectCountry(country_iso_code);
	}

	/**
	 * 
	 * Method : selectCountryPagingList
	 * 작성자 : PC19
	 * 변경이력 :
	 * @param pageVo
	 * @return
	 * Method 설명 : 국가 페이징 리스트, 전체 국가수 리턴.
	 */
	@Override
	public Map<String, Object> selectCountryPagingList(PageVo pageVo) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		resultMap.put("countryList", countryDao.selectCountryPagingList(pageVo));
		resultMap.put("countryCnt", countryDao.getCountryCnt());
		// lastPage를 알기위해 Cnt를 구함.
		
		return resultMap;
	}

}
