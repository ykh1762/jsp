package kr.or.ddit.country.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

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
import kr.or.ddit.util.model.PageVo;

@WebServlet("/countryPagingList")
public class CountryPagingListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private ICountryService countryService;
	
	@Override
	public void init() throws ServletException {
		countryService = new CountryServiceImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// page, pageSize에 해당하는 파라미터를 받기. --> pageVo. 단, 파라미터가 null일 경우
		// --> page : 1, pageSize : 10.
		int page = request.getParameter("page") == null ? 
				1 : Integer.parseInt(request.getParameter("page"));
		
		int pageSize = request.getParameter("pageSize") == null ? 
				6 : Integer.parseInt(request.getParameter("pageSize"));
		
		PageVo pageVo = new PageVo(page, pageSize);
		
		// userService 객체를 이용해서 userPagingList 조회.
		Map<String, Object> resultMap = countryService.selectCountryPagingList(pageVo);
		
		List<CountryVo> countryList = (List<CountryVo>) resultMap.get("countryList");
		int countryCnt = (Integer) resultMap.get("countryCnt");
		
		// request 객체에 조회된 결과를 속성으로 설정.
		request.setAttribute("countryList", countryList);
		request.setAttribute("countryCnt", countryCnt);
		request.setAttribute("pageSize", pageSize);
		request.setAttribute("page", page);
		
		// 출력할 jsp로 위임(forward).
		request.getRequestDispatcher("/country/countryPagingList.jsp").forward(request, response);;
	}

}
















