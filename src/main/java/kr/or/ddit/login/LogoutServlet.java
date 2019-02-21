package kr.or.ddit.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// logout 기능
		// session 객체를 무효화
		// 1. 정해진 시간이 지날경우.
		// 2. session.invalidate();
		
		// session 활성화 시간 설정
		// 1. session.setMaxInactiveInterval(interval);
		// 2. web.xml
		// <session-config>
		//   <session-timeout>[분 단위]</session-timeout>
		// </session-config>
		
		HttpSession session = request.getSession();
		session.setMaxInactiveInterval(60*60); // 1시간
		
		session.invalidate();
		
		// 로그인 페이지로 이동.
		request.getRequestDispatcher("/login").forward(request, response);
		
//		14:15:17.647 [http-nio-80-exec-4] DEBUG kr.or.ddit.listener.SessionListener - sessionListener session destroyed?? : C6FA1409EF07FD6DF30CCD9062B3119D
//		14:15:17.649 [http-nio-80-exec-4] DEBUG kr.or.ddit.listener.SessionListener - sessionListener session created?? : E5ECF837A33A49FFB3123BCE3406DBD6
		// 로그아웃 버튼을 눌렀을 때 세션이 사라지고 새로운 세션이 바로 생김.
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}












