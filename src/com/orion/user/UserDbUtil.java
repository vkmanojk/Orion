package com.orion.user;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class UserDbUtil {
	private DataSource dataSource;

	public UserDbUtil(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public boolean register(User user) {
		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		System.out.println("Registering");
		try {
			myConn = dataSource.getConnection();
			myStmt = myConn.createStatement();
			String sql = "INSERT INTO user (title, name, phone, email, password, type, isPhone, course) " + "VALUES ('"
					+ user.getTitle() + "', '" + user.getName() + "', '" + user.getPhone() + "'" + ", '"
					+ user.getEmail() + "', '" + user.getPassword() + "', '" + user.getType() + "'" + ", "
					+ user.isPhone() + ", '" + user.getCourse() + "')";
			myStmt.executeUpdate(sql);
			System.out.println("Registered");
		} catch (Exception e) {
			System.out.println("Unable to Register");
			e.printStackTrace();
		} finally {
			close(myConn, myStmt, myRs);
		}
		return true;
	}

	public String login(String email, String password) {
		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		try {
			myConn = dataSource.getConnection();
			myStmt = myConn.createStatement();
			String sql = "SELECT * FROM user WHERE email = '" + email + "' AND password= '" + password + "'";
			myRs = myStmt.executeQuery(sql);

			while (myRs.next()) {
				String title = myRs.getString("title");
				String name = myRs.getString("name");
				int id = myRs.getInt("id");
				String phone = myRs.getString("phone");
				int type = myRs.getInt("type");
				String mail = myRs.getString("email");
				String course = myRs.getString("course");
				boolean isPhone = myRs.getBoolean("isPhone");
				java.util.Date time = myRs.getDate("logtime");
				return String.valueOf(id) + "." + title + "." + name + "." + phone + "." + 
						mail + "." + course + "." + isPhone + "." + type + "." + time;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(myConn, myStmt, myRs);
		}
		return null;
	}

	public boolean changePassword(String email, String old, String confirm) {
		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		try {
			myConn = dataSource.getConnection();
			myStmt = myConn.createStatement();
			String sql = "SELECT * FROM user WHERE email = '" + email + "' AND password= '" + old + "'";
			myRs = myStmt.executeQuery(sql);

			if (myRs.next()) {
				sql = "UPDATE user SET password= '" + confirm + "' WHERE email = '" + email + "'";
				myStmt.executeUpdate(sql);
				close(myConn, myStmt, myRs);
				return true;
			}
			close(myConn, myStmt, myRs);
			return false;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(myConn, myStmt, myRs);
		}
		return false;
	}

	public boolean setPassword(String email, String password) {
		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		try {
			myConn = dataSource.getConnection();
			myStmt = myConn.createStatement();
			String sql = "SELECT * FROM user WHERE email = '" + email + "'";
			myRs = myStmt.executeQuery(sql);
			int count = 0;
			while (myRs.next()) {
				count++;
			}
			if (count < 1) {
				close(myConn, myStmt, myRs);
				return false;

			} else {
				sql = "UPDATE user SET password= '" + password + "' WHERE email = '" + email + "'";
				myStmt.executeUpdate(sql);
				close(myConn, myStmt, myRs);
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(myConn, myStmt, myRs);
		}
		return false;
	}

	public boolean updateProfile(String title, String name, String course, String email, String phone,
			boolean isPhone) {
		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		System.out.println("Registering");
		try {
			myConn = dataSource.getConnection();
			myStmt = myConn.createStatement();
			String sql = "UPDATE user SET title='"+title+"',"
					+ "name='"+name+"',"
					+ "phone='"+phone+"',"
					+ "email='"+email+"',"
					+ "course='"+course+"',"
					+ "isPhone='"+isPhone+"',"
					+ "logtime='CURRENT_TIMESTAMP'"
					+ "WHERE email = '" + email + "'";
			myStmt.executeUpdate(sql);
			System.out.println("User Updated");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(myConn, myStmt, myRs);
		}
		return true;
	}

	public List<User> getUser() {
		List<User> users = new ArrayList<>();
		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;

		try {
			myConn = dataSource.getConnection();
			myStmt = myConn.createStatement();
			String sql = "SELECT * FROM user";
			myRs = myStmt.executeQuery(sql);
			int id;
			String title, name, phone, email, password, course;
			int type;
			boolean isPhone;
			while (myRs.next()) {
				id = myRs.getInt("id");
				title = myRs.getString("title");
				name = myRs.getString("name");
				phone = myRs.getString("phone");
				email = myRs.getString("email");
				password = myRs.getString("password");
				type = myRs.getInt("type");
				course = myRs.getString("course");
				isPhone = myRs.getBoolean("isPhone");

				User temp = new User(id, title, name, phone, email, password, course, type, isPhone);
				users.add(temp);

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(myConn, myStmt, myRs);
		}
		return users;
	}

	private void close(Connection myConn, Statement myStmt, ResultSet myRs) {

		try {
			if (myConn != null)
				myConn.close();
			if (myStmt != null)
				myStmt.close();
			if (myRs != null)
				myRs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
