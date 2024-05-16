package com.chainsys.pojo;

public class BookingForm {

		public BookingForm(String name, String email, String phonenumber, String gender) {
		super();
		this.name = name;
		this.email = email;
		this.phonenumber = phonenumber;
		this.gender = gender;
	}
		public String getName() {
		return name;
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
		String name;
		String email;
		String phonenumber;
		String gender;

	
 public BookingForm() {
	 
 }
 }
