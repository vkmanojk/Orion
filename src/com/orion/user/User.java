package com.orion.user;

public class User {
	private int id;
	private String title, name, phone, email, password, course;
	private int type;
	private boolean isPhone;

	public User(String title, String name, String phone, String email, String password, String course, int type,
			boolean isPhone) {
		this.title = title;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.password = password;
		this.type = type;
		this.isPhone = isPhone;
		this.course = course;
	}

	public User(int id, String title, String name, String phone, String email, String password, String course, int type,
			boolean isPhone) {
		this.id = id;
		this.title = title;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.password = password;
		this.type = type;
		this.isPhone = isPhone;
		this.course = course;
	}

	public int getId() {
		return id;
	}

	public String getTitle() {
		return title;
	}

	public String getName() {
		return name;
	}

	public String getPhone() {
		return phone;
	}

	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}

	public int getType() {
		return type;
	}

	public boolean isPhone() {
		return isPhone;
	}
	
	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setType(int type) {
		this.type = type;
	}

	public void setPhone(boolean isPhone) {
		this.isPhone = isPhone;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", title=" + title + ", name=" + name + ", phone=" + phone + ", email=" + email
				+ ", password=" + password + ", type=" + type + ", isPhone=" + isPhone + "]";
	}

}
