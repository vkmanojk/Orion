package com.orion.user;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDbUtil userDbUtil;
	static int count = 0;
	@Resource(name = "jdbc/Orion")
	DataSource dataSource;

	@Override
	public void init() throws ServletException {
		super.init();
		try {
			userDbUtil = new UserDbUtil(dataSource);
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		String sessName = userDbUtil.login(email, password);
		count++;
		System.out.println("GET");
		System.out.println(count);
		if (sessName == null) {
			System.out.println("Session failed");
			request.setAttribute("loginMsg", "Wrong username or password");
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		} else {
			System.out.println("Session");
			System.out.println(sessName);
			request.setAttribute("loginMsg", "Successfully logged in !");
			request.setAttribute("sessionName", sessName);
			request.getSession(false).setAttribute("sess", sessName);
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		String sessName = userDbUtil.login(email, password);
		count++;
		System.out.println("GET");
		System.out.println(count);
		if (sessName == null) {
			request.setAttribute("loginMsg", "Wrong username or password");
			RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
			rd.forward(request, response);
		} else {
			count++;
			System.out.println("Post session");
			System.out.println(sessName);
			request.setAttribute("loginMsg", "Successfully logged in !");
			request.setAttribute("sessionName", sessName);
			RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
			rd.forward(request, response);
		}

	}

}
