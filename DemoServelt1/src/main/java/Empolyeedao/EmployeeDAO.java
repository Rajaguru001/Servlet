package Empolyeedao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.chainsys.pojo.EmployeeForm;

public class EmployeeDAO {
	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/loginjdpc", "root","Guru@7733");
		return connection;
		
	}
	
public static void login(EmployeeForm e) throws SQLException, ClassNotFoundException {
	
	Connection connection=EmployeeDAO.getConnection();
	String query="insert into login values(?,?,?,?)";
	PreparedStatement ps = connection.prepareStatement(query);
	ps.setString(1, e.getName());
	ps.setString(2, e.getPassword());
	ps.setString(3, e.getEmail());
	ps.setInt(4, e.getPhonenumber());
	
	ps.executeUpdate();
	
}
	
	
	
	
	

}
