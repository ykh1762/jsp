package kr.or.ddit.country.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.country.model.CountryVo;
import kr.or.ddit.country.service.CountryServiceImpl;
import kr.or.ddit.country.service.ICountryService;
import kr.or.ddit.lprod.model.LprodVo;
import kr.or.ddit.lprod.service.ILprodService;
import kr.or.ddit.lprod.service.LprodServiceImpl;
import kr.or.ddit.user.model.UserVo;
import kr.or.ddit.user.service.IUserService;
import kr.or.ddit.user.service.UserServiceImpl;

@WebServlet("/countryList")
public class CountryListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ICountryService countryService;   
	
	@Override
	public void init() throws ServletException {
		countryService = new CountryServiceImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<CountryVo> countryList = countryService.getAllCountry();
		
		// 전체 정보를 request 객체에 속성으로 설정.
		request.setAttribute("countryList", countryList);
		
		// webapp/country/countryList.jsp로 forward.
		request.getRequestDispatcher("/country/countryList.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}


















