package kr.or.ddit.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.user.model.UserVo;
import kr.or.ddit.user.service.IUserService;
import kr.or.ddit.user.service.UserServiceImpl;

/**
 * Servlet implementation class LoginServlet
 */
// web.xml에 설정한 servlet-mapping을 대신하는 annotation.
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private IUserService userService;
	
    @Override
	public void init() throws ServletException {
    	userService = new UserServiceImpl();
	}

	// 웹브라우저 주소줄에 localhost/login url을 입력하여 요청
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// /login/login.jsp로 request dispatch forward
		RequestDispatcher rd = request.getRequestDispatcher("/login/login.jsp");
		rd.forward(request, response);
		
	}

	// login.jsp sign in 버튼을 눌렀을 때 요청 처리(로그인 요청 처리)
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 사용자 전성 파라미터(userId, password)
		// 두 파라미터 모두 단일값을 보내는 것을 이미 알고 있음.
		String userId = request.getParameter("userId"); // return -> 'String'
		String password = request.getParameter("password");
		
		
		// db에서 userId에 해당하는 사용자 정보를 조회
		UserVo userVo = userService.selectUser(userId);
		request.getSession().setAttribute("userVo", userVo);
		
		// db의 정보와 사용자 파라미터 정보가 일치하는 경우 --> main.jsp
		if(userVo.getUserId().equals(userId) && userVo.getPass().equals(password)){
			// request객체를 이용하여 dispatcher 객체를 얻고 main.jsp로 forward
			// webapp/main.jsp
			RequestDispatcher rd = request.getRequestDispatcher("/module/main.jsp");
			rd.forward(request, response);
		}
		// db의 정보와 사용자 파라미터 정보가 불일치하는 경우 --> login.jsp
		else{
			// request객체를 이용하여 dispatcher 객체를 얻고 /login/login.jsp로 forward
			RequestDispatcher rd = request.getRequestDispatcher("/login/login.jsp");
			rd.forward(request, response);
		}
	}

	/**
	 * 
	 * Method : getUserFromDb
	 * 작성자 : PC19
	 * 변경이력 :
	 * @param userId
	 * @return
	 * Method 설명 : db에서 조회가 되었다고 가정하고 임의의 UserVo객체를 생성/반환.
	 */
	private UserVo getUserFromDb(String userId){
		UserVo userVo = new UserVo();
		userVo.setUserId(userId);
		userVo.setPass("pass1234");
		return userVo;
	}
}













