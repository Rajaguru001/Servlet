package com.chainsys.demoservelt1;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chainsys.pojo.EmployeeForm;

import Empolyeedao.EmployeeDAO;

/**
 * Servlet implementation class EmpolyeeDetails
 */
@WebServlet("/EmployeeDetails")
public class EmpolyeeDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	EmployeeForm details=new EmployeeForm();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpolyeeDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		String phone=request.getParameter("phonenumber");
		
		int phone1=Integer.parseInt(phone);
		
		details.setName(name);
		details.setPassword(password);
		details.setEmail(email);
		details.setPhonenumber(phone1);
		
		try {
			EmployeeDAO.login(details);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
