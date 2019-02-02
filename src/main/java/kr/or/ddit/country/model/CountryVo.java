package kr.or.ddit.country.model;

import java.util.ArrayList;

public class CountryVo {
	private String country_id;			// 국가번호
	private String country_iso_code;	// 국가코드
	private String country_name;		// 국가이름
	private String country_subregion;	// 국가구역
	
	// 테이블을 만들 수가 없어..
	
	@Override
	public String toString() {
		return "CountryVo [country_id=" + country_id + ", country_iso_code="
				+ country_iso_code + ", country_name=" + country_name
				+ ", country_subregion=" + country_subregion + "]";
	}
	
	public String getCountry_id() {
		return country_id;
	}
	public void setCountry_id(String country_id) {
		this.country_id = country_id;
	}
	public String getCountry_iso_code() {
		return country_iso_code;
	}
	public void setCountry_iso_code(String country_iso_code) {
		this.country_iso_code = country_iso_code;
	}
	public String getCountry_name() {
		return country_name;
	}
	public void setCountry_name(String country_name) {
		this.country_name = country_name;
	}
	public String getCountry_subregion() {
		return country_subregion;
	}
	public void setCountry_subregion(String country_subregion) {
		this.country_subregion = country_subregion;
	}
	
}
