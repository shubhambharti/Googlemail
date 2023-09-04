package pack;
import java.sql.*;
import java.util.Date;
public class MyBean{
	PreparedStatement ps;
	ResultSet rs;
	PreparedStatement ps1;
	ResultSet rs1;
	Connection con;
	Date d = new Date();
	
	private boolean valid=false;
	private String Firstname;
	private String Lastname;
	private String Email;
	private String Email1;
	private String pwd;
	
	
	public void setFirstname(String Firstname) {
		this.Firstname = Firstname;
	}
	public void setLastname(String Lastname) {
		this.Lastname = Lastname;
	}
	public void setEmail(String Email) {
		this.Email = Email;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public void setEmail1(String Email1) {
		this.Email1 = Email1;
	}
	
	
	public String getFirstname() {
		return Firstname;
	}
	public String getLastname() {
		return Lastname;
	}
	public String getEmail() {
		return Email;
	}
	public String getPwd() {
		return pwd;
	}
	public String getEmail1() {
		return Email1;
	}
	
	
	
	
	public boolean userRegister(){
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql:///530batch","root","admin");
			ps=con.prepareStatement("Select Email from userdetails");
			rs=ps.executeQuery();
			while(rs.next()){
				if(Email.equals(rs.getString("Email"))){
					valid=true;
					break;
				}
			}
			if(!valid)
			{
				ps=con.prepareStatement("Insert into userdetails value(?,?,?,?)");
				ps.setString(1,Firstname);
				ps.setString(2,Lastname);
				ps.setString(3,Email);
				ps.setString(4,pwd);
				ps.executeUpdate();
				
				
			}
		}
		catch(Exception e){
			System.out.print(e);
		}
		return valid;
	}
	
	public boolean userLogin(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql:///530batch","root","admin");
			ps=con.prepareStatement("Select Email,pwd from userdetails");
			rs=ps.executeQuery();
			while(rs.next()){
				if(Email.equals(rs.getString("Email")) && pwd.equals(rs.getString("pwd"))){
					valid=true;
					break;
				}
			}
		}
		catch(Exception e){
			System.out.print(e);
		}
		return valid;
	}
	
}