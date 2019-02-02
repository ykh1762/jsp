package kr.or.ddit.country.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.country.model.CountryVo;
import kr.or.ddit.country.service.CountryServiceImpl;
import kr.or.ddit.country.service.ICountryService;
import kr.or.ddit.user.model.UserVo;
import kr.or.ddit.user.service.IUserService;
import kr.or.ddit.user.service.UserServiceImpl;

@WebServlet("/country")
public class CountryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ICountryService countryService;
    
	@Override
	public void init() throws ServletException {
		countryService = new CountryServiceImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String country_iso_code = request.getParameter("country_iso_code");
		
		// 해당 파라미터로 userService.selectUser(userId);
		CountryVo countryVo = countryService.selectCountry(country_iso_code);
		
//		ArrayList<String> flagList = countryVo.flagList;
		
		// 조회된 user객체를 request객체에 속성으로 저장.
		request.setAttribute("countryVo", countryVo);
//		request.setAttribute("flagList", flagList);
		
		// 상세 화면으로 위임.
		request.getRequestDispatcher("/country/country.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}










