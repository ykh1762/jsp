package kr.or.ddit.lprod.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.lprod.service.ILprodService;
import kr.or.ddit.lprod.service.LprodServiceImpl;
import kr.or.ddit.prod.model.ProdVo;
import kr.or.ddit.user.model.UserVo;
import kr.or.ddit.user.service.IUserService;
import kr.or.ddit.user.service.UserServiceImpl;

@WebServlet("/prodList")
public class ProdListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ILprodService lprodService;  
    
	@Override
	public void init() throws ServletException {
		lprodService = new LprodServiceImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// parameter 확인.
		String lprod_gu = request.getParameter("lprod_gu");
		System.out.println(lprod_gu);
		
		// 해당 파라미터로 userService.selectUser(userId);
		List<ProdVo> prodList = lprodService.selectLprod(lprod_gu);
		
		// 조회된 user객체를 request객체에 속성으로 저장.
		request.setAttribute("prodList", prodList);
		request.setAttribute("lprod_gu", lprod_gu);
		
		// 사용자 상세 화면을 담당하는 view인 user.jsp로 위임.
		request.getRequestDispatcher("/lprod/prodList.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}










