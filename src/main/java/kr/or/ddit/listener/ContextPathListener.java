package kr.or.ddit.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ContextPathListener implements ServletContextListener{
	private Logger logger = LoggerFactory.getLogger(ContextPathListener.class);
	
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		logger.debug("contextPathListener initialized!!");
		
		// contextPath 값을 짧은 이름으로 application scope에 저장.
		// servletContext == application
		ServletContext application = sce.getServletContext();
		String contextPath = application.getContextPath();
		
		// 기존 : ${cp } -> ${cp }
		application.setAttribute("cp", contextPath);
		
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		
	}

}














