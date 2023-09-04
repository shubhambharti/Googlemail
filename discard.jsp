<%@page import="java.sql.*" %>
<%@page import="java.util.Date" %>
<%!
	
	PreparedStatement ps;
	ResultSet rs;
	
%>
<%@ include file="connect.jsp" %>
<%
	String fromone=(String)session.getAttribute("Email");
	Date d = new Date();
	String recepients=request.getParameter("recepients");
	String cc=request.getParameter("cc");
	String bcc=request.getParameter("bcc");
	String subject=request.getParameter("subject");
	String content=request.getParameter("content");
	String status= "False";
	String senddate=request.getParameter("Date");
	String id=request.getParameter("id");
	String attachment=request.getParameter("attachment");
	
	
	try{
		ps=con.prepareStatement("Insert into discard value(?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,fromone);
		ps.setString(2,recepients);
		ps.setString(3,cc);
		ps.setString(4,bcc);
		ps.setString(5,subject);
		ps.setString(6,content);
		ps.setString(7,status);
		ps.setString(8,senddate);
		ps.setString(9,id);
		ps.setString(10,attachment);
		ps.executeUpdate();
        %>
        <jsp:include page="draftpage.jsp"/>
        <%
	}
	catch(Exception e){
		out.print(e);
	}
%>
