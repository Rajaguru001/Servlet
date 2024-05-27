package Empolyeedao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.chainsys.pojo.EmployeeForm;
import com.mysql.cj.jdbc.PreparedStatementWrapper;
import com.mysql.cj.x.protobuf.MysqlxPrepare.Prepare;

public class EmployeeDAO {
	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/loginjdpc", "root","Guru@7733");
		return connection;
		
	}
	
public  void login(EmployeeForm e) throws SQLException, ClassNotFoundException {
	
	Connection connection=EmployeeDAO.getConnection();
	String query="insert into login(username,password,email,phonenumber) values(?,?,?,?)";
	PreparedStatement ps = connection.prepareStatement(query);
	ps.setString(1, e.getName());
	ps.setString(2, e.getPassword());
	ps.setString(3, e.getEmail());
	ps.setString(4, e.getPhonenumber());
	
	ps.executeUpdate();
	
}

public static void update(EmployeeForm e) throws ClassNotFoundException, SQLException {
	System.out.println(e.getName()+" "+e.getId());
	Connection connection=EmployeeDAO.getConnection();
	String query="update login set username=?,password=?,email=?,phonenumber=? where id=?";
	PreparedStatement ps= connection.prepareStatement(query);
	ps.setString(1, e.getName());
	ps.setString(2,e.getPassword());
	ps.setString(3, e.getEmail());
	ps.setString(4, e.getPhonenumber());
	ps.setInt(5, e.getId());
	int row = ps.executeUpdate();
	System.out.println("updated  "+row);
	
}
public static void delete(int id) throws ClassNotFoundException, SQLException {
	Connection connection=EmployeeDAO.getConnection();
	String delete = "delete from login where ID=?";
	PreparedStatement stm = connection.prepareStatement(delete);
	stm.setInt(1, id);
	int row=stm.executeUpdate();
	System.out.println("Deleted row"+row);
	
}
public ArrayList<EmployeeForm> insert() throws ClassNotFoundException, SQLException {
	ArrayList<EmployeeForm>val=new ArrayList<EmployeeForm>();
	Connection connection=EmployeeDAO.getConnection();
	String query="select id,username,password,email,phonenumber from login";
	PreparedStatement stm = connection.prepareStatement(query);
	ResultSet re=stm.executeQuery();
	while(re.next())
	{ 
		EmployeeForm Employeeform=new EmployeeForm();
		Employeeform.setId(re.getInt("id"));
		Employeeform.setName(re.getString("username"));
		Employeeform.setPassword(re.getString("password"));
		Employeeform.setEmail(re.getString("email"));
		Employeeform.setPhonenumber(re.getString("phonenumber"));
		val.add(Employeeform);	
		System.out.println(re.getInt("id"));
		System.out.println(re.getString("username"));
	}
	return val;
	
}
public ArrayList<EmployeeForm> getcolumn(){
	
	return null;
	
}
public static ArrayList<EmployeeForm> search(String name) throws ClassNotFoundException, SQLException {
	Connection connection=EmployeeDAO.getConnection();
	ArrayList<EmployeeForm>val=new ArrayList<EmployeeForm>();
	String query="select * from login where name like ? ";
	PreparedStatement ps= connection.prepareStatement(query);
	ps.setString(1,"%"+name+"%");
	ResultSet re=ps.executeQuery();
	while(re.next())
	{ 
		EmployeeForm Employeeform=new EmployeeForm();
		
		Employeeform.setId(re.getInt("id"));
		Employeeform.setName(re.getString("username"));
		Employeeform.setPassword(re.getString("password"));
		Employeeform.setEmail(re.getString("email"));
		Employeeform.setPhonenumber(re.getString("phonenumber"));
		val.add(Employeeform);
		System.out.println("the value"+val);
	}
	return val;
	
	
	
}
//public static ascending() {
//	
//}
		

}
