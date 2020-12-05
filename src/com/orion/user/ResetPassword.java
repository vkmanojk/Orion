package com.orion.user;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.apache.commons.lang.RandomStringUtils;

@WebServlet("/ResetPassword")
public class ResetPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String host;
	private String port;
	private String email;
	private String name;
	private String pass;

	private UserDbUtil userDbUtil;

	@Resource(name = "jdbc/Orion")
	DataSource dataSource;

	@Override
	public void init() throws ServletException {
		super.init();
		try {
			userDbUtil = new UserDbUtil(dataSource);
			ServletContext context = getServletContext();
			host = context.getInitParameter("host");
			port = context.getInitParameter("port");
			email = context.getInitParameter("email");
			name = context.getInitParameter("name");
			pass = context.getInitParameter("pass");
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String page = "resetpass.jsp";
		request.getRequestDispatcher(page).forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String recipient = request.getParameter("email");
		String subject = "Your Password has been reset";
		String newPassword = resetPassword(recipient);
		String content = "Hi, this is your new password: " + newPassword;
		content += "\nNote: for security reasons, " + "kindly ensure that you change your password after logging in.";
		System.out.println(newPassword);
		String message = "";
		if (newPassword == null) {
			request.getRequestDispatcher("user/resetpass.jsp").forward(request, response);
		} else {
			try {
				System.out.println("Email not send to reset");
				EmailUtility.sendEmail(host, port, email, name, pass, recipient, subject, content);
				System.out.println("Email sent to reset");
				message = "Your password has been reset. Please check your e-mail.";
			} catch (Exception ex) {
				System.out.println("Unable to reset");
				ex.printStackTrace();
				message = "There was an error! Try again later !!";
			} finally {
				System.out.println(message);
				request.setAttribute("resetmsg", message);
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}
		}

	}

	private String resetPassword(String recipient) {
		String randomPassword = RandomStringUtils.randomAlphanumeric(10);
		userDbUtil.setPassword(recipient, randomPassword);
		return randomPassword;
	}

}
