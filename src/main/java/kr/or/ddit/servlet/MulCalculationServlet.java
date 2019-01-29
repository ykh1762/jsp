package kr.or.ddit.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mulCalculation")
public class MulCalculationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String start = request.getParameter("inputStart");
		String end = request.getParameter("inputEnd");
		int int_start = Integer.valueOf(start);
		int int_end = Integer.valueOf(end);
		
//		int sum = 1;
//		for(int i = int_start; i <= int_end; i++){
//			sum *= i;
//		}
		
		int sum = int_start*int_end;
		
		String resultSum = String.valueOf(sum);
		
		request.getSession().setAttribute("mulResult", resultSum);
		
		request.getRequestDispatcher("/jsp/mulResult.jsp").forward(request, response);
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
