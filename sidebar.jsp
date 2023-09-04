<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/sidebar.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />


    <title>Hello, world!</title>
</head>

<body>

    <div class=" px-1 sidebar">

        <div class="side-nav">
            <div class="compose m-3 ">
                <a href="composebox.jsp">
                    <i class="fa-solid fa-pen fa-sm"></i>
                    <span>Compose</span>
                </a>
            </div>
            


            <div class="row flex-nowrap">
                <div class="col-10">
                    <div class="d-flex flex-column align-items-center align-items-sm-start pt-2 text-white ">

                        <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start"
                            id="menu">
                            <li class="nav-item">
                                <a href="welcome.jsp" class="nav-link align-middle px-0">
                                    <i class="fa-solid fa-inbox fa-sm"></i> <span
                                        class="ms-1 d-none d-sm-inline">Inbox</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link align-middle px-0">
                                    <i class="fa-regular fa-star fa-sm"></i> <span
                                        class="ms-1 d-none d-sm-inline">Starred</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link align-middle px-0">
                                    <i class="fa-regular fa-clock fa-sm"></i> <span
                                        class="ms-1 d-none d-sm-inline">Snoozed</span>
                                </a>
                            </li>
                            <li>
                                <a href="sent.jsp" class="nav-link px-0 align-middle">
                                    <i class="fa-regular fa-paper-plane fa-sm"></i> <span
                                        class="ms-1 d-none d-sm-inline">Sent</span> </a>
                            </li>
                            <li>
                                <a href="draftpage.jsp" class="nav-link px-0 align-middle">
                                    <i class="fa-regular fa-file fa-sm"></i> <span
                                        class="ms-1 d-none d-sm-inline">Draft</span> </a>
                            </li>
                            <li>
                                <a href="#" class="nav-link px-0 align-middle">
                                    <i class="fa-solid fa-circle-info fa-sm"></i> <span
                                        class="ms-1 d-none d-sm-inline">Spam</span> </a>
                            </li>
                            <li>
                                <a href="#submenu3" data-bs-toggle="collapse" class="nav-link px-0 align-middle">
                                    <i class="fa-solid fa-chevron-down fa-sm"></i><span
                                        class="ms-1 d-none d-sm-inline">More</span></a>
                                <ul class="collapse nav flex-column ms-1 more" id="submenu3" data-bs-parent="#menu">
                                    <li class="w-100">
                                        <a href="#" class="nav-link px-0"><i class="fa-solid fa-vault fa-sm"></i>
                                            <span class="d-none d-sm-inline">Important</span></a>
                                    </li>
                                    <li>
                                        <a href="#" class="nav-link px-0"><i class="fa-regular fa-message fa-sm"></i>
                                            <span class="d-none d-sm-inline">Chat</span></a>
                                    </li>
                                    <li>
                                        <a href="#" class="nav-link px-0"><i class="fa-solid fa-user-clock fa-sm"></i>
                                            <span class="d-none d-sm-inline">Scheduled</span></a>
                                    </li>
                                    <li>
                                        <a href="#" class="nav-link px-0"><i
                                                class="fa-solid fa-envelopes-bulk fa-sm"></i> <span
                                                class="d-none d-sm-inline">All Email</span></a>
                                    </li>
                                    <li>
                                        <a href="#" class="nav-link px-0"><i class="fa-regular fa-trash-can fa-sm"></i>
                                            <span class="d-none d-sm-inline">Trash</span></a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </div>
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