package pack;
import java.sql.*;
import java.util.Date;
public class Mail
{	

	private String fromone;
	private String recepients;
	private String subject;
	private String status;
	private String content;
	private String Email1;
	private String id;
	private boolean valid=false;
	Date d = new Date();
	

	PreparedStatement ps;
	ResultSet rs;
	PreparedStatement ps1;
	ResultSet rs1;
	Connection con;
	
	
	
	public void setFromone(String fromone)
	{
		this.fromone=fromone;
	}
	public void setRecepients(String recepients)
	{
		this.recepients=recepients;
	}
	public void setSubject(String subject)
	{
		this.subject=subject;
	}
	public void setContent(String content)
	{
		this.content=content;
	}
	public void setStatus(String status)
	{
		this.status=status;
	}
	public void setEmail1(String Email1)
	{
		this.Email1=Email1;
	}
	public void setId(String id)
	{
		this.id=id;
	}
	
	
	
	public String getFromone()
	{
		return fromone;
	}
	public String getRecepients()
	{
		return recepients;
	}
	public String getSubject()
	{
		return subject;
	}
	public String getStatus()
	{
		return status;
	}
	public String getContent()
	{
		return content;
	}
	public String getEmail1()
	{
		return Email1;
	}
	public String getId()
	{
		return id;
	}
	
	// compose mail
		public boolean composeData(){
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql:///530batch","root","admin");
				ps=con.prepareStatement("Insert into composemail(fromone,recepients,subject,content,status,senddate) values(?, ?, ?, ?, ?, ?)");
				ps.setString(1,fromone);
				ps.setString(2,recepients);
				ps.setString(3,subject);
				ps.setString(4,content);
				ps.setString(5,status);
				ps.setString(6,d.toString());
				ps.executeUpdate();
				valid=true;
			}
			catch(Exception e)
			{
				System.out.print(e);	
			}
			return valid;
		}
		
	// Inbox
		public ResultSet inbox(){
			
			try{ 
				Date d = new Date();
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql:///530batch","root","admin");
				ps=con.prepareStatement("Select * from composemail");
				rs=ps.executeQuery();
				
			}catch(Exception e){
				System.out.print(e);
			}	
		return rs;			
		} 
	// Discard
		public ResultSet discard(){
			
			try{ 
				Date d = new Date();
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql:///530batch","root","admin");
				ps=con.prepareStatement("Select * from discard");
				rs=ps.executeQuery();
				
			}catch(Exception e){
				System.out.print(e);
			}	
		return rs;			
		} 
	
}