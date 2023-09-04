<%
		String Firstname=request.getParameter("Firstname");
		String Lastname=request.getParameter("Lastname");
		String Email=request.getParameter("Email");
		String pwd=request.getParameter("pwd");
		%>
		<jsp:useBean id="mb" class="pack.MyBean">
		<jsp:setProperty name="mb" property="firstname" value="<%=Firstname%>"/>
		<jsp:setProperty name="mb" property="lastname" value="<%=Lastname%>"/>
		<jsp:setProperty name="mb" property="email" value="<%=Email%>"/>
		<jsp:setProperty name="mb" property="pwd" value="<%=pwd%>"/>
		</jsp:useBean>
		<%
		try{
			if(mb.userRegister())
			{
				%>
				<html>Your E-mail is already registered with us.</html>
				<jsp:include page="register.html"/>
				<%
			}
			else{
				response.sendRedirect("index.html");
			}
		}
		catch(Exception e){
			System.out.print(e);
		}
%>