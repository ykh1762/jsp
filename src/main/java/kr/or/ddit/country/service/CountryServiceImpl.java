package kr.or.ddit.country.service;

import java.util.List;

import kr.or.ddit.country.dao.CountryDaoImpl;
import kr.or.ddit.country.dao.ICountryDao;
import kr.or.ddit.country.model.CountryVo;
import kr.or.ddit.lprod.dao.ILprodDao;
import kr.or.ddit.lprod.dao.LprodDaoImpl;

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

}
