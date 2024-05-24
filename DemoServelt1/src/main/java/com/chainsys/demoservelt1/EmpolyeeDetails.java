package com.chainsys.demoservelt1;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Scanner;

import javax.servlet.RequestDispatcher;
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
	ArrayList<EmployeeForm> values=new ArrayList<EmployeeForm>();
	//EmployeeForm details=new EmployeeForm();
       
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
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		String action = request.getParameter("action");
		if (action != null) {

			switch (action) {
			case "delete":
				int deleteuserid = Integer.parseInt(request.getParameter("deleteid"));
				EmployeeDAO Employeedelete = new EmployeeDAO();
				try {
					EmployeeDAO.delete(deleteuserid);
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				break;
			case "update":
				
				EmployeeForm employeeForm = new EmployeeForm();
				int updateuserid=Integer.parseInt(request.getParameter("updateid"));
				employeeForm.setId(updateuserid);
				employeeForm.setName(request.getParameter("name"));
				employeeForm.setPassword(request.getParameter("password"));
				employeeForm.setEmail(request.getParameter("email"));
				employeeForm.setPhonenumber(request.getParameter("phonenumber"));
				
				EmployeeDAO Employeeupdate = new EmployeeDAO();
				try {
					EmployeeDAO.update(employeeForm);
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				break;
				
			case "searchvalue":
				EmployeeForm employeeForm1 = new EmployeeForm();
				String searchid=request.getParameter("search");
				try {
					EmployeeDAO.search(searchid);
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				System.out.println("filter value"+searchid);
				break;
				
				
			}
			 RequestDispatcher dispatcher = request.getRequestDispatcher("LoginInfo.jsp");
		        dispatcher.forward(request, response);

		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        String name = request.getParameter("name");
	        String password = request.getParameter("password");
	        String email = request.getParameter("email");
	        String phone = request.getParameter("phonenumber");
	        EmployeeDAO emp= new EmployeeDAO();
	        EmployeeForm details = new EmployeeForm(password, name, email, phone);
	    //  System.out.println(details.getName());
	        try {
	        	emp.login(details);
	        } catch (SQLException | ClassNotFoundException e) {
	            e.printStackTrace();
	        }

	        RequestDispatcher dispatcher = request.getRequestDispatcher("LoginInfo.jsp");
	        dispatcher.forward(request, response);
	       
	    }
	    	
	    
	}


