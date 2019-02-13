package kr.or.ddit.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.user.service.IUserService;
import kr.or.ddit.user.service.UserServiceImpl;

@WebServlet("/userPassEncrypt")
public class UserPassEncryptController extends HttpServlet {
	private IUserService userService;
	
	@Override
	public void init() throws ServletException {
		userService = new UserServiceImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		userService.encryptPass();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
