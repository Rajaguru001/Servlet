package com.chainsys.pojo;

public class EmployeeForm {
	public EmployeeForm() {
		
	}
	String password;
	
	public EmployeeForm(String password, int id, String name, String email, String phonenumber) {
		super();
		this.password = password;
		this.id = id;
		this.name = name;
		this.email = email;
		this.phonenumber = phonenumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public EmployeeForm(String password, String name, String email, String phonenumber) {
		super();
		this.password = password;
		this.name = name;
		this.email = email;
		this.phonenumber = phonenumber;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	int id;
	String name;
	String email;
	String phonenumber;

}
