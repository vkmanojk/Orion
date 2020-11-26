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

@WebServlet("/UserProfile")
public class UserProfile extends HttpServlet {
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
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Change Profile");

		String title, name, course, email, phone;
		boolean isPhone;
		title = request.getParameter("title");
		name = request.getParameter("name");
		phone = request.getParameter("number");
		email = request.getParameter("email");
		course = request.getParameter("course");
		isPhone = request.getParameter("isphone") == "1";
		String sessName = (String) request.getSession().getAttribute("sess");
		System.out.println(sessName);
		if (userDbUtil.updateProfile(title, name, course, email, phone, isPhone)) {
			request.setAttribute("changeProfile", "Profile Updated");
			request.setAttribute("loginMsg", "Successfully logged in !");
			request.setAttribute("sessionName", sessName);
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
		else {
			request.setAttribute("changeProfile", "Error Occured! Try later !!");
			RequestDispatcher rd = request.getRequestDispatcher("userprofile.jsp");
			rd.forward(request, response);
		}
	}

}
