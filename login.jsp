
<%
String Email=request.getParameter("Email");
String pwd=request.getParameter("pwd");
%>
<jsp:useBean id="mb" class="pack.MyBean">
<jsp:setProperty name="mb" property="email" value="<%=Email%>"/>
<jsp:setProperty name="mb" property="pwd" value="<%=pwd%>"/>
</jsp:useBean>
<%
if(mb.userLogin())
{
	session.setAttribute("Email",Email);
%>
	<jsp:forward page="welcome.jsp"/>
<%
}
else{
%>
	<html><font color="red"><b>Hi your email or password is wrong</b></font></html>
	<jsp:include page="index.html"/>
<%
}
%>