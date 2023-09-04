<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="assets/css/inbox-nav.css">

  <title></title>
</head>

<body>
  <header>
    <nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <div class="navbar-header row col-lg-2 col-md-3 col-sm-3">
          <div class="col-lg-3 col-md-3 drop-menu m-auto ">
            <button class="menuehide" href="#">
              <i class="fa-solid fa-bars fa-lg"></i>
            </button>
          </div>
          <div class="col-lg-9 col-md-9 p-0">
            <a class="navbar-brand" href="welcome.jsp"><img src="assets/images/logo_gmail_lockup_dark_1x_r5.png" alt=""></a>
          </div>
        </div>
        <form class="navbar-form navbar-center col-lg-8 col-md-7 col-sm-6">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="Search Email">
            <div class="input-group-btn">
              <button class="btn btn-default"><i class="fa-solid fa-magnifying-glass fa-sm"></i> </button>
            </div>
            <button class="slider-btn"><i class="fa-solid fa-sliders fa-sm"></i></button>
          </div>

        </form>
        <div class="nav right-nav row col-lg-2 col-md-3 col-sm-2 ps-5 ms-3">
          <button class="col-3 " href="#"><i class="fa-regular fa-circle-question fa-lg"></i></button>
          <button class="col-3" href="#"><i class="fa-solid fa-gear fa-lg"></i></button>
          <button class="col-3" href="#"><i class="fa-solid fa-ellipsis-vertical fa-lg"></i></button>
          <a class="profile col-3 ms-0 nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="assets/images/profile.jpg" /></a>
		  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
		  <% String Email=(String)session.getAttribute("Email");%>
			<small><%= Email %></small>
			<a class="dropdown-item" href="signout.jsp">Sign out</a>
		</div>

      </div>
    </nav>
  </header>

  <!-- Optional JavaScript; choose one of the two! -->

  <!-- Option 1: Bootstrap Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
	
  <!-- Option 2: Separate Popper and Bootstrap JS -->
  <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>

</html>