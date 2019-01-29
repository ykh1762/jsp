package kr.or.ddit.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/sumCalculation")
public class SumCalculationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String start = request.getParameter("inputStart");
		String end = request.getParameter("inputEnd");
		int int_start = Integer.valueOf(start);
		int int_end = Integer.valueOf(end);
		request.getSession().setAttribute("inputCheck", false);
		
		if(int_start > int_end){
			request.getSession().setAttribute("inputCheck", true);
			request.getRequestDispatcher("/jsp/sumInput.jsp").forward(request, response);
			return;
		}
		System.out.println(1);
		
		int int_result = 0;  
		for(int i = int_start; i <= int_end; i++){
			int_result += i;
		}
		// 가우스 공식을 이용해서
		// 3 ~ 10 -> 1 ~ 10 - 1 ~ 2. ( n(n+1) / 2 )
		
		String result = String.valueOf(int_result);
		
		request.getSession().setAttribute("sumResult", result); 
		// session에 값을 저장. key - value.
		
		request.getRequestDispatcher("/jsp/sumResult.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
