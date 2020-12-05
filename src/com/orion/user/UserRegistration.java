package com.orion.user;

import java.io.IOException;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet("/UserRegistration")
public class UserRegistration extends HttpServlet {
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
		String title, name, phone, email, password, course;
		String type;
		boolean isPhone;
		title = request.getParameter("title");
		name = request.getParameter("name");
		phone = request.getParameter("phone_number");
		email = request.getParameter("email");
		password = request.getParameter("password");
		course = request.getParameter("course_type") == null ? "arts" : request.getParameter("course_type");
		type = request.getParameter("member_level");
		isPhone = request.getParameter("confirm_type") == "by_phone";
		boolean isAgree = request.getParameter("agree-term") != null;
		System.out.println(count);
		if(count != 0) {
		if (isAgree) {
			signup(title, name, phone, email, password, course, type, isPhone, response, request);
		} else {
			request.setAttribute("signupMsg", "Please agree to the terms and conditions");
			RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
			rd.forward(request, response);
		}
		} else {
			count++;
			request.setAttribute("signupMsg", null);
			RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
			rd.forward(request, response);
		}
	}

	private boolean isValidEmail(String email) {
		String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)" + "*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";
		Pattern pattern = Pattern.compile(emailRegex);
		if (email == null)
			return false;
		System.out.println(pattern.matcher(email).matches());
		return pattern.matcher(email).matches();
	}

	private boolean isValidPassword(String password) {
		System.out.println(password);
		String passwordRegex = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&+=])(?=\\S+$).{8,}$";
		Pattern pattern = Pattern.compile(passwordRegex);
		if (password == null) {
			return false;
		}
		System.out.println(pattern.matcher(password).matches());
		return pattern.matcher(password).matches();
	}

	private void signup(String title, String name, String phone, String email, String password, String course,
			String type, boolean isPhone, HttpServletResponse response, HttpServletRequest request) {

		try {
			User newUser = new User(title, name, phone, email, password, course, Integer.parseInt(type), isPhone);
			if (isValidEmail(email)) {
				System.out.println("Valid email");
				if (isValidPassword(password)) {
					System.out.println("valid password");
					if (!(userDbUtil.register(newUser))) {
						request.setAttribute("signupMsg", "Error! Please try later !!");
						RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
						rd.forward(request, response);
					} else {
						request.setAttribute("signupMsg", "Account Created !!");
						RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
						rd.forward(request, response);
					}
				} else {
					String sMsg = "Your password must have:1)At least 8 characters and at most 20 characters.2) At least one digit.3) At least one upper case alphabet.4) At least one lower case alphabet.5) At least one special character which includes @#$%6) It should not contain any white space.";
					request.setAttribute("signupMsg", sMsg);
					RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
					rd.forward(request, response);
				}

			} else {
				request.setAttribute("signupMsg", "Enter valid email id !!");
				RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
				rd.forward(request, response);
			}

		} catch (IOException e) {
			e.printStackTrace();
		} catch (ServletException e) {
			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
