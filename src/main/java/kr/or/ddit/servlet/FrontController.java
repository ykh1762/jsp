package kr.or.ddit.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.front.CommonController;
import kr.or.ddit.front.HandlerMapper;
import kr.or.ddit.front.HandlerInvoker;
import kr.or.ddit.front.ViewResolver;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

// ex) userList.do, rangersList.do 
@WebServlet("*.do")
public class FrontController extends HttpServlet{
	private Logger logger = LoggerFactory.getLogger(FrontController.class);

	private HandlerMapper handlerMapper;
	private HandlerInvoker handlerInvoker; // 
	private ViewResolver viewResolver;
	
	@Override
	public void init() throws ServletException {
		handlerMapper = new HandlerMapper();
		handlerInvoker = new HandlerInvoker();
		viewResolver = new ViewResolver();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		logger.debug("frontController doGet! : {}", req.getRequestURI());
		
		// uri 요청을 처리해줄 컨트롤러 확인.
		CommonController controller = handlerMapper.getController(req.getRequestURI());
		
		// 컨트롤러 실행.
		String viewInfo = handlerInvoker.invoke(req, resp, controller);
		
		// viewResolver를 통한 응답 생성.
		viewResolver.viewResolve(req, resp, viewInfo);
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}
	

}













