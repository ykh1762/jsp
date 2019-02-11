package kr.or.ddit.user.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.javafx.geom.transform.BaseTransform.Degree;

import kr.or.ddit.user.model.UserVo;
import kr.or.ddit.user.service.IUserService;
import kr.or.ddit.user.service.UserServiceImpl;

@WebServlet("/userForm")
public class UserFormController extends HttpServlet{
    private IUserService userService;
    
	@Override
	public void init() throws ServletException {
		userService = new UserServiceImpl();
	}

	/**
	 * 
	 * Method : doGet
	 * 작성자 : PC19
	 * 변경이력 :
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 * Method 설명 : 사용자 등록 폼.
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.getRequestDispatcher("/user/userForm.jsp").forward(req, resp);
	}

	/**
	 * 
	 * Method : doPost
	 * 작성자 : PC19
	 * 변경이력 :
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 * Method 설명 : 사용자 정보 등록.
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");

		// 1. 사용자 아이디 중복체크
		String userId = req.getParameter("userId");
		
		UserVo duplicateUserVo = userService.selectUser(userId);
		
		// 2-2. 중복체크 통과 실패 : 사용자 등록페이지로 이동.
		if(duplicateUserVo != null){
			// forward시에는 최초 요청한 method를 변경할 수 없음.
			// post --> post
//			req.getRequestDispatcher("/userForm").forward(req, resp);
			
			req.setAttribute("msg", "중복체크에 실패 했습니다.");
			
			
//			req.getRequestDispatcher("/user/userForm.jsp").forward(req, resp);
			// jsp로 보내거나..
			
			doGet(req, resp);
			// doGet을 호출함.
			return;
		}
		
		// 2-1. 중복체크 통과 : 사용자 정보를 db에 입력.
		// null이면 통과.
		// 한글 깨지지 않게 하기. (oracle error. 컬럼 크기가 작아서가 아니고 한글이 깨져서)
		UserVo userVo = new UserVo(req.getParameter("userId"), req.getParameter("userNm"), 
				req.getParameter("alias"), req.getParameter("addr1"), 
				req.getParameter("addr2"), req.getParameter("zipcode"), 
				req.getParameter("pass"), new Date());
		
		int insertCnt = userService.insertUser(userVo);
		
		// 2-1-1. 사용자 페이징 리스트 1페이지로 이동.
		// *이동하는 방식
		if(insertCnt == 1){
			// 입력 성공.
			
//			req.getRequestDispatcher("/user/userPagingList.jsp").forward(req, resp);
			// jsp로 위임할 경우 userList가 출력되지 않음.
			
//			req.getRequestDispatcher("/userPagingList").forward(req, resp);
			// post로 보냈기 때문에 /userPagingList에서도 post를 사용함.
			
			// **forward / redirect
			// db에 변경이 있을때는 redirect를 사용함.(redirect에는 contextPath를 추가해줘야 함.)
			// forward일때는 F5 새로고침을 했을때 db처리를 다시 요청함.
			
//			req.setAttribute("msg", "정상 등록 되었습니다."); --> redirect가 되면 req가 초기화
//			되므로 의미 없음. -> session에 저장.
			req.getSession().setAttribute("msg", "정상 등록 되었습니다.");
			
			resp.sendRedirect(req.getContextPath() + "/userPagingList");
		}else{
			// 입력 실패.
			doGet(req, resp);
		}
		

		// 리스트 페이지로는 왜 이동이 안되지?
		
		
		
		
		
	}
	
}













