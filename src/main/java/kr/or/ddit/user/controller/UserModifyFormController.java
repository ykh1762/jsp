package kr.or.ddit.user.controller;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import kr.or.ddit.user.model.UserVo;
import kr.or.ddit.user.service.IUserService;
import kr.or.ddit.user.service.UserServiceImpl;
import kr.or.ddit.util.PartUtil;

@WebServlet("/userModifyForm")
@MultipartConfig(maxFileSize=5*1024*1024, maxRequestSize=5*5*1024*1024)
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
		
		Part profilePart = request.getPart("profile");
		
		String fileName = "";
		String realFileName = "";
		
		if(profilePart.getSize() > 0){
			// 사용자 테이블에 파일명을 저장(실제 업로드한 파일명 - fileName, 파일 충돌을 방지하기
			// 위해 사용한 uuid - realFileName)
			String contentDisposition = profilePart.getHeader("Content-Disposition");
			
			fileName = PartUtil.getFileNameFromPart(contentDisposition);
			realFileName = "d:\\picture\\" + UUID.randomUUID().toString();
			
			// 디스크에 기록 (d:\picture\ + realFileName)
			profilePart.write(realFileName);
			
		}
		
		// 사용자가 사진을 올리지 않은 경우 -> ""로 입력.
		
		userVo.setFileName(fileName);
		userVo.setRealFileName(realFileName);
		
		
		int updateCnt = userService.updateUser(userVo);
		
		if(updateCnt == 1){
			request.getSession().setAttribute("updateMsg", "정보 수정 완료.");
			response.sendRedirect(request.getContextPath() + "/user?userId=" + request.getParameter("userId"));			
		}else{
			doGet(request, response);
		}
	}

}
