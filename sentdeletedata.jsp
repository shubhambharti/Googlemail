<%@page import="java.sql.*"%>
<%! 
    PreparedStatement ps2;
    ResultSet rs2;
%>
<%
    String id[]=request.getParameterValues("cb1");
   

    try{
%>
        <%@ include file="connect.jsp"%>
<%
for(int i=0;i<id.length;i++)
{
   
        ps2=con.prepareStatement("delete from composemail where id=?");
        ps2.setInt(1,Integer.parseInt(id[i]));
       ps2.executeUpdate();
}
%>
<jsp:forward page="sent.jsp"/>  
    <%
    }
    catch(Exception e)
    {
        out.print(e);
    }
%>