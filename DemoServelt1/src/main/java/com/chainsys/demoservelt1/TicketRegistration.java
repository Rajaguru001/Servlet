package com.chainsys.demoservelt1;

import java.util.ArrayList;

import com.chainsys.pojo.BookingForm;

public class TicketRegistration {
 ArrayList<BookingForm> bookings =	new ArrayList<>();
public void  addBooking (String name,String email,String number1,String gender){
	BookingForm bk =new BookingForm(name,email,number1,gender);
	bookings.add(bk);
	System.out.println(bookings);
}
public ArrayList<BookingForm> getBookings(){
	return bookings;
}
}
