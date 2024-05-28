package login;
import java.util.*;
import java.sql.*;
public class InsertData {
	public static boolean saveData(Data data) {
		int count =0;
		String name = data.getName();
		String email = data.getEmail();
		String pwd = data.getPwd();
		String cpwd = data.getCpwd();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/my_organization","root","root");
			PreparedStatement p=c.prepareStatement("insert into Registration (Id,name,email,pwd,cpwd) values (?,?,?,?,?)");
			Random r=new Random();
				int id =r.nextInt(1000);
				p.setInt(1,id);
				p.setString(2,name);
				p.setString(3,email);
				p.setString(4,pwd);
				p.setString(5,cpwd);
				count = p.executeUpdate();
				}
		catch(Exception e) {
			e.printStackTrace();
		}
		if(count==1)
			return true;
		else 
			return false;
}
}
