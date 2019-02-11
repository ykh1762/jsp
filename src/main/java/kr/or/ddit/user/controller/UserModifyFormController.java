package kr.or.ddit.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.user.model.UserVo;
import kr.or.ddit.user.service.IUserService;
import kr.or.ddit.user.service.UserServiceImpl;

@WebServlet("/userModifyForm")
public class UserModifyFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    private IUserService userService;
    
	@Override
	public void init() throws ServletException {
		userService = new UserServiceImpl();
	}
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		// 파라미터로부터 userId를 받고
		String userId = (String) request.getParameter("userId");
		
		// userService를 통해 사용자 정보를 조회함.
		UserVo user = userService.selectUser(userId);
		
		// request의 속성에 UserVo를 저장하고
		request.setAttribute("user", user);
		
		// 수정 화면으로 위임.
		request.getRequestDispatcher("/user/userModify.jsp").forward(request, response);;
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		UserVo userVo = new UserVo(request.getParameter("userId"), request.getParameter("userNm"), 
				request.getParameter("alias"), request.getParameter("addr1"), 
				request.getParameter("addr2"), request.getParameter("zipcode"), 
				request.getParameter("pass"));
		
		int updateCnt = userService.updateUser(userVo);
		
		if(updateCnt == 1){
			request.getSession().setAttribute("updateMsg", "정보 수정 완료.");
			response.sendRedirect(request.getContextPath() + "/user?userId=" + request.getParameter("userId"));			
		}else{
			doGet(request, response);
		}
	}

}
