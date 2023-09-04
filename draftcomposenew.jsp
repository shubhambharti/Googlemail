<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/composenew.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />


    <title></title>
	<style>
	.textarea::-webkit-scrollbar {
		display: none;
	}
	</style>
</head>

<body>

    <div class="my-modal composenew" id="modalOne">
        <header>
            <nav class="navbar navbar-expand-lg navbar-light comp-nav">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">New Message</a>
                </div>
                <div class="d-flex navbar-brand comp-close">
                    <button class="nav-link" title="Minimize"><i class="fa-solid fa-minus fa-2xs"></i></button>
                    <button class="nav-link" title="Exit full screen"><i class="fa-solid fa-down-left-and-up-right-to-center fa-2xs"></i></button>
                    <button class="nav-link close" title="Save & close" id="backButton"><i class="fa-solid fa-xmark fa-2xs"></i></button>
                </div>
            </nav>
        </header>
        <form class="mt-3" action="compose.jsp" method="post">
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
				<%
				ResultSet rs=pa.discard();
			try{ 
			
				while(rs.next()){
					if(id.equals(rs.getString("id"))){ %>
				
            <div class="mb-3 recipients">
                <input type="email" name="recepients" class="form-control" placeholder="Email" value="<%= rs.getString("recepients") %>">
                <div class="d-flex cc-btn">
                    <button onclick="show()">Cc</button>
                    <button>Bcc</button>
                </div>
                <hr class="m-0">
            </div>
            <div class="mb-3" id="cc">
                <input type="email" name="cc" class="form-control" placeholder="Cc">
                <hr class="m-0">
            </div>
            <div class="mb-3 bcc" id="bcc">
                <input type="email" name="bcc" class="form-control" placeholder="Bcc">
                <hr class="m-0">
            </div>
            <div class="mb-3">
                <input type="text" name="subject" class="form-control" placeholder="Subject" value="<%= rs.getString("subject") %>">
                <hr class="m-0">
            </div>
            <div class="mb-3">
                <textarea type="text" name="content" class="form-control textarea"><%= rs.getString("content") %></textarea>
            </div>
            <footer class="row ms-2">
                <div class="send-btn col-lg-1 col-md-2 col-sm-2 row">
                    <button type="submit" title="Send" class="btn btn-primary px-1 col-9">Send</button>
                    <button class="sendcaret p-0 col-3" title="Send more option"><i
                            class="fa-sharp fa-solid fa-caret-down fa-sm" style="color: #ffffff;"></i></button>
                </div>
                <div class="col-lg-10 col-md-9 col-sm-9 utility">
                    <button title="Formating option" id="discard"><i class="fa-regular fa-floppy-disk"></i></button>
                    <a title="Attach files" onclick="document.getElementById('getFile').click()"><i class="fa-solid fa-paperclip"></i></a><input type='file' name="attachment" id="getFile" style="display:none">
                    <button title="Insert link"><i class="fa-solid fa-link"></i></button>
                    <button title="Insert emoji"><i class="fa-regular fa-face-smile"></i></button>
                    <button title="Insert files using drive"><i class="fa-brands fa-google-drive"></i></button>
                    <button title="Inser photo"><i class="fa-regular fa-image"></i></button>
                    <button title="Toggle confidential mode"><i class="fa-solid fa-lock"></i></button>
                    <button title="Insert signature"><i class="fa-solid fa-pen-clip"></i></button>
                    <button title="More option"><i class="fa-solid fa-ellipsis-vertical"></i></button>
                </div>
                <div class="col-lg-1 col-md-1 col-sm-1 discard ps-lg-5">
                    <button title="Discard draft"><i class="fa-regular fa-trash-can"></i></button>
                </div>

            </footer>
			<%
					}
				}
			}
			catch(Exception e){}
			%>
        </form>
    </div>





    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
		<script>
			backButton.onclick=()=>{
            window.history.back();
        }
		const discard=document.getElementById("discard");
		const form=document.getElementById("form");
		discard.onclick=()=>{
			form.action="discard.jsp";
		}
		</script>
</body>

</html>