package com.chainsys.demoservelt1;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chainsys.pojo.BookingForm;

/**
 * Servlet implementation class FlightBooking
 */
@WebServlet("/FlightBooking")
public class FlightBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
	TicketRegistration ticket =new TicketRegistration();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FlightBooking() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("Name");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("Phonenumber");
        String gender = request.getParameter("Gender");
        ticket.addBooking(name, email, phoneNumber, gender);
        
        request.setAttribute("bookings", ticket.getBookings());
        request.getRequestDispatcher("Table.jsp").forward(request, response);
    }


	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
