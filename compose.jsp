<%
    String fromone = (String) session.getAttribute("Email");
    String recepients = request.getParameter("recepients");
    String subject = request.getParameter("subject");
    String status = "FALSE";
    String content = request.getParameter("content");
	
%>
	<jsp:useBean id="pa" class="pack.Mail">
		<jsp:setProperty name="pa" property="fromone" value="<%=fromone%>" />
		<jsp:setProperty name="pa" property="recepients" value="<%=recepients%>" />
		<jsp:setProperty name="pa" property="subject" value="<%=subject%>" />
		<jsp:setProperty name="pa" property="status" value="<%=status%>"/>
		<jsp:setProperty name="pa" property="content" value="<%=content%>" />
	</jsp:useBean>
<%
        if(pa.composeData())
		{%>
			<jsp:forward page="welcome.jsp" />
        <%
		} 
%>