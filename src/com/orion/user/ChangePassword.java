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

@WebServlet("/ChangePassword")
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDbUtil userDbUtil;

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
//		PrintWriter out = response.getWriter();
		String email = request.getParameter("email");
		String oldPass = request.getParameter("old");
		String newPass = request.getParameter("new");
		String conPass = request.getParameter("confirm");
		
		if (newPass.equals(conPass)) {
			if (userDbUtil.changePassword(email, oldPass, conPass)) {
				request.setAttribute("changeError", "Changed Password!");
				RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
			    rd.forward(request,response);
			} else {
				request.setAttribute("changeError", "Wrong username or password");
				RequestDispatcher rd = request.getRequestDispatcher("/changepassword.jsp");
			    rd.forward(request,response);
			}
		} else {
			request.setAttribute("changeError", "Wrong username or password");
			RequestDispatcher rd = request.getRequestDispatcher("/changepassword.jsp");
		    rd.forward(request,response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
