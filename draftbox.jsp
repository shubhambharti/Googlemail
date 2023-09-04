<%@page import="java.sql.*"%>
<!doctype html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link rel="stylesheet" href="assets/css/inbox.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
		integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
		crossorigin="anonymous" referrerpolicy="no-referrer" />
	<style>
	.demo {
		width:100%;
		height:100%;
		border-spacing:2px;
		padding:5px;
		table-layout:fixed;
	}
	.demo tr{
		cursor:pointer;
		border-bottom:1px solid rgba(157, 157, 157, 0.271);
		height: 45px !important;
	}
	.demo tr td {
		text-align:left;
		padding:5px;
		height: 50px !important;
		white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
	}
	tr td:nth-child(1){
		width: 60px;
	}
	tr td:nth-child(2){
		width: 250px;
	}
	tr td:nth-child(3){
		width: 880px;
	}
	.mail:hover{
		box-shadow: 1px 0 2px 1px rgb(104, 104, 104);
	}
	</style>

	<title></title>
</head>

<body>
	<form id="form">
		<div class="inbox">
			<nav class="navbar navbar-expand-lg">
				<div class="container-fluid">
					<div class="check">
						<input class="form-check-input" type="checkbox" value="" id="selectAll">
						<button><i class="fa-solid fa-caret-down fa-xs"></i></button>
					</div>
					<div class="navbar-nav navbar-collapse ms-3">
					<button  id="deleteButton" onclick="Delete()"><i class="fa fa-trash"></i></button>
						<button class="nav-link active" aria-current="page" onclick="refreshPage()"><i class="fa-solid fa-rotate-right fa-sm"></i></button>
						<button class="nav-link" href="#"><i class="fa-solid fa-ellipsis-vertical fa-sm"></i></button>
					</div>
				</div>
				<div class="d-flex slider">
					<button class="nav-link" href="#"><i class="fa-solid fa-angle-left fa-xs"></i></button>
					<button class="nav-link" href="#"><i class="fa-solid fa-angle-right fa-xs"></i></button>
				</div>
			</nav>
			<div>
				<%
				String Email1=(String)session.getAttribute("Email");
				String id = request.getParameter("id");
				String recepients = request.getParameter("recepients");
				String subject = request.getParameter("subject");
				String content = request.getParameter("content");
				%>
				<jsp:useBean id="pa" class="pack.Mail">
					<jsp:setProperty name="pa" property="fromone" value="<%=Email1%>" />
					<jsp:setProperty name="pa" property="subject" value="<%=subject%>" />
					<jsp:setProperty name="pa" property="content" value="<%=content%>" />
					<jsp:setProperty name="pa" property="content" value="<%=id%>" />
					<jsp:setProperty name="pa" property="content" value="<%=recepients%>" />
				</jsp:useBean>
				<table class="demo"><tr><td></td><td>From</td><td>Message</td><td>Date</td></tr><%
				ResultSet rs=pa.discard();
				try{
					while(rs.next()){
					if(Email1.equals(rs.getString("recepients"))){ %>
						
						
							<tr class="mail" onclick="window.location='draftcomposebox.jsp?id=<%= rs.getString("id") %>';"> 
							
								<td onclick="event.stopPropagation();"><input type="checkbox" name="cb1" class="select" id="select" value='<%= rs.getString("id") %>' style="width:60px;height:15px;"></td>
								<td><%= rs.getString("recepients") %></td>
								<td><b><%= rs.getString("subject") %></b>-<%= rs.getString("content") %></td>
								<td><%= rs.getString("senddate") %></td>
							</tr><%
						}
					}
				}catch(Exception e){}%>
					
				</table>	
			</div>
		</div>
	</form>
	<script>
		const main=document.getElementById("selectAll");
		const select=document.getElementsByClassName("select");
		main.onclick=()=>{
			if(main.checked == true) {
				for(let i=0;i<select.length;i++)
				{
					select[i].checked=true;
					document.querySelector('button').style.display='block';
				}
			}
			else{
				for(let i=-0;i<select.length;i++){
					select[i].checked=false;
					document.querySelector('button').style.display='none';
				}
			}
		}
		const deleteButton=document.getElementById("deleteButton");
		const form=document.getElementById("form");
		deleteButton.onclick=()=>{
			form.action="deletedata.jsp";
		}
		function refreshPage(){
			window.location.reload();
		} 
	</script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>