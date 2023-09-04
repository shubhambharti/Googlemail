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
		<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
	<style>
	
	.demo {
		width:100%;
		height:100%;
		border-spacing:2px;
		
	}
	.subject{
		height: 50px;
		text-transform: capitalize;
	}
	.user{
		height: 50px;
	}
	.subject td:nth-child(1){
		width: 11%;
	}
	.subject td:nth-child(2){
		width: 1%;
	}
	.user td:nth-child(2){
		text-align: right;
	}
	.reply a, .forward a{
		border: 1px solid rgba(60, 59, 59, 0.971);
		border-radius: 20px;
		width:100px;
		text-decoration: none;
		color: rgba(60, 59, 59, 0.971);
		padding: 5px 20px;
	}
	.reply a i, .forward a i, delete button i{
		color: rgba(60, 59, 59, 0.971);
	}
	.reply a:hover, .forward a:hover, .delete button:hover{
		background-color: rgba(120, 119, 119, 0.326);
	}
	.delete button{
		border: 1px solid rgba(60, 59, 59, 0.971);
		border-radius: 20px;
		width:100px;
		color:rgba(60, 59, 59, 0.971);
		padding: 3px 20px;
		margin: 13px;
	}
	
	
	pre{
		white-space: break-spaces;
		overflow-y: scroll;
		max-height: 52vh;
		scroll-behavior: smooth;
		text-align: justify;
		font-family: 'Poppins', sans-serif;
	}
	.content::-webkit-scrollbar {
		display: none;
	}
	</style>

	<title></title>
</head>

<body>

	<div class="message">
		<nav class="navbar navbar-expand-lg">
			<div class="container-fluid">
				<div class="navbar-nav navbar-collapse ms-3">
					<button class="nav-link active" aria-current="page" id="backButton"><i class="fa-solid fa-arrow-left fa-sm"></i></button>
					<button class="nav-link active" aria-current="page" ><i class="fa-solid fa-box-archive fa-sm"></i></button>
					<button class="nav-link active" aria-current="page" ><i class="fa-solid fa-info fa-sm"></i></button>
					<button class="nav-link active" aria-current="page" onclick="Delete()" id="deleteButton"><i class="fa-regular fa-trash-can fa-sm"></i></button>
					<button class="nav-link active" aria-current="page" ><i class="fa-regular fa-envelope fa-sm"></i></button>
					<button class="nav-link active" aria-current="page" ><i class="fa-regular fa-clock fa-sm"></i></button>
					<button class="nav-link active" aria-current="page" ><i class="fa-solid fa-check fa-sm"></i></button>
					<button class="nav-link active" aria-current="page" ><i class="fa-solid fa-tag fa-sm"></i></button>
					<button class="nav-link" href="#"><i class="fa-solid fa-ellipsis-vertical fa-sm"></i></button>
				</div>
			</div>
			<div class="d-flex slider">
				<button class="nav-link" href="#"><i class="fa-solid fa-angle-left fa-xs"></i></button>
				<button class="nav-link" href="#"><i class="fa-solid fa-angle-right fa-xs"></i></button>
			</div>
		</nav>
		<hr>
		<form id="form">
		<div class="container">
			<%@page import="java.sql.*" %>
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
			
			
			
			<table class="demo">
				<%
				ResultSet rs=pa.inbox();
				try{
					while(rs.next()){
					if(id.equals(rs.getString("id"))){ %>
						<tr class="subject">
							<td><h3 class=""><%= rs.getString("subject") %></h3></td>
							<td>	
								<div class="d-flex slider">
									<button class="nav-link" href="#"><i class="fa-solid fa-print fa-sm"></i></button>
									<button class="nav-link" href="#"><i class="fa-solid fa-arrow-up-right-from-square fa-sm"></i></button>
								</div>
							</td>
						</tr>
						<tr class="user">
							<td>
								<small><%= rs.getString("fromone") %></small><br>
								<small>to me <i class="fa-solid fa-caret-down fa-2xs"></i></small>
							</td>
							<td>
								<small ><%= rs.getString("senddate") %></small>
								<i class="fa-regular fa-star fa-sm px-3"></i>
								<a href="replycomposebox.jsp?id=<%= rs.getString("id") %>" class="mx-auto"><i class="fa-solid fa-reply fa-sm px-3"></i></a>
								<i class="fa-solid fa-ellipsis-vertical fa-sm px-3"></i>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<pre class="content pt-3"><body><%= rs.getString("content") %><%= rs.getString("attachment") %></a></pre>
							</td>
						</tr>
						
			
				
			</table>
		</div>
		<footer>
			<div class="fr d-flex m-2">
				<div class="reply m-3">
					<a href="replycomposebox.jsp?id=<%= rs.getString("id") %>" class="mx-auto"><i class="fa-solid fa-reply fa-sm"></i>Reply</a>
				</div>
				<div class="forward m-3">
					<a href="forwardcomposebox.jsp?id=<%= rs.getString("id") %>" class="mx-auto"><i class="fa-solid fa-share fa-sm"></i>Forward</a>
				</div>
				<div class="delete">
					<button class="" onclick="Delete()" id="deleteButton"><i class="fa-regular fa-trash-can fa-sm"></i>Delete</button>
				</div>
				
			</div>
		</footer>
	

<%
					}
					
				}
			
			}
			
			
catch(Exception e){} %>
		</form>	
</div>

	
	<script>
		const deleteButton=document.getElementById("deleteButton");
		const form=document.getElementById("form");
		deleteButton.onclick=()=>{
			form.action="deletedata.jsp";
		}
		backButton.onclick=()=>{
            window.history.back();
        }
        
		
	</script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>

</html>