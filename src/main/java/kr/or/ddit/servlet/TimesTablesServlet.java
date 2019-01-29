package kr.or.ddit.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 
 * NowServlet.java
 *
 * @author PC19
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *
 * 수정자 수정내용
 * ------ ------------------------
 * PC19 최초 생성
 *
 * </pre>
 */
public class TimesTablesServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter pw = resp.getWriter();
		
		pw.println("<!DOCTYPE html>                 ");
		pw.println("<html>                          ");
		pw.println("<head>                          ");
		pw.println("<meta charset=\"UTF-8\">        ");
		pw.println("<title>Insert title here</title>");
		pw.println("</head>                         ");
		pw.println("<body>     servlet -> for loop. timestables                    ");
		
		pw.println("<table border=\"3\">				");
		for(int j=2; j<10; j++){
			pw.println("<tr>");
			
			for(int i=0; i<9; i++){
				pw.println("	<td>"+j+"*"+(i+1)+" = "+j*(i+1)+"</td>");
			}
			
			pw.println("</tr>");
		}
		
		pw.println("</body>                         ");
		pw.println("</html>                         ");
		
		pw.flush();
		pw.close();
		
	}

	
	
	
	
	
	
	
	
	
	
	
}
