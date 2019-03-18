<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
    <%--<title>Тестовое приложение</title>--%>

    <%--&lt;%&ndash;<meta charset="utf-8">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<meta name="viewport" content="width=device-width, initial-scale=1">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<meta http-equiv="content-type" content="text/html;charset=UTF-8"/>&ndash;%&gt;--%>

    <%--&lt;%&ndash;&lt;%&ndash;<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>&ndash;%&gt;&ndash;%&gt;--%>
    <%--&lt;%&ndash;&lt;%&ndash;<script type="text/javascript" src="https://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>&ndash;%&gt;&ndash;%&gt;--%>
    <%--&lt;%&ndash;&lt;%&ndash;<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"&ndash;%&gt;&ndash;%&gt;--%>
          <%--&lt;%&ndash;&lt;%&ndash;rel="stylesheet" type="text/css">&ndash;%&gt;&ndash;%&gt;--%>
    <%--&lt;%&ndash;&lt;%&ndash;<link href="https://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css"&ndash;%&gt;&ndash;%&gt;--%>
          <%--&lt;%&ndash;&lt;%&ndash;rel="stylesheet" type="text/css">&ndash;%&gt;&ndash;%&gt;--%>

    <%--&lt;%&ndash;&lt;%&ndash;<link href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet" type="text/css">&ndash;%&gt;&ndash;%&gt;--%>

    <%--&lt;%&ndash;&lt;%&ndash;<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>&ndash;%&gt;&ndash;%&gt;--%>

    <%--&lt;%&ndash;&lt;%&ndash;<link rel="stylesheet" type="text/css" href="css/main.css">&ndash;%&gt;&ndash;%&gt;--%>

    <%--&lt;%&ndash;&lt;%&ndash;<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>&ndash;%&gt;&ndash;%&gt;--%>

    <%--&lt;%&ndash;&lt;%&ndash;<script src="js/script.js"></script>&ndash;%&gt;&ndash;%&gt;--%>

    <%--&lt;%&ndash;&lt;%&ndash;<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>&ndash;%&gt;&ndash;%&gt;--%>

    <%--&lt;%&ndash;<!-- Google font -->&ndash;%&gt;--%>
    <%--&lt;%&ndash;<link href="https://fonts.googleapis.com/css?family=Lato:700%7CMontserrat:400,600" rel="stylesheet">&ndash;%&gt;--%>

    <%--&lt;%&ndash;<!-- Bootstrap -->&ndash;%&gt;--%>
    <%--&lt;%&ndash;<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>&ndash;%&gt;--%>

    <%--&lt;%&ndash;<!-- Font Awesome Icon -->&ndash;%&gt;--%>
    <%--&lt;%&ndash;<link rel="stylesheet" href="css/font-awesome.min.css">&ndash;%&gt;--%>

    <%--&lt;%&ndash;<!-- Custom stlylesheet -->&ndash;%&gt;--%>
    <%--&lt;%&ndash;<link type="text/css" rel="stylesheet" href="css/style.css"/>&ndash;%&gt;--%>

    <%--<meta charset="utf-8">--%>
    <%--<meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1">--%>
    <%--<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->--%>

    <%--<title>HTML Education Template</title>--%>

    <%--<!-- Google font -->--%>
    <%--<link href="https://fonts.googleapis.com/css?family=Lato:700%7CMontserrat:400,600" rel="stylesheet">--%>

    <%--<!-- Bootstrap -->--%>
    <%--<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>--%>

    <%--<!-- Font Awesome Icon -->--%>
    <%--<link rel="stylesheet" href="css/font-awesome.min.css">--%>

    <%--<!-- Custom stlylesheet -->--%>
    <%--<link type="text/css" rel="stylesheet" href="css/style.css"/>--%>


<%--</head>--%>

<%--<body>--%>
<%--&lt;%&ndash;<div class="section">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<div class="container">&ndash;%&gt;--%>
        <%--&lt;%&ndash;<div class="row">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<div class="col-md-3">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<a class="btn btn-primary" onclick="showAllNames()">Show all names</a>&ndash;%&gt;--%>

                <%--&lt;%&ndash;<div class="border">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<div>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<a class="btn btn-primary" onclick="addName()">Add names</a>&ndash;%&gt;--%>

                        <%--&lt;%&ndash;<div class="modal-body" style="text-align: center;">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<input class="form-control" id="NewNameInput"&ndash;%&gt;--%>
                                   <%--&lt;%&ndash;placeholder="Enter some name">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<td><%=request.getAttribute("current count")%></td>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>

            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<div class="col-md-6">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<table class="table">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<tbody id="table_names">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</tbody>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</table>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>

<%--<!-- Header -->--%>
<%--<header id="header" class="transparent-nav">--%>
    <%--<div class="container">--%>

        <%--<div class="navbar-header">--%>
            <%--<!-- Logo -->--%>
            <%--<div class="navbar-brand">--%>
                <%--<a class="logo" href="index.html">--%>
                    <%--<img src="./img/logo-alt.png" alt="logo">--%>
                <%--</a>--%>
            <%--</div>--%>
            <%--<!-- /Logo -->--%>

            <%--<!-- Mobile toggle -->--%>
            <%--<button class="navbar-toggle">--%>
                <%--<span></span>--%>
            <%--</button>--%>
            <%--<!-- /Mobile toggle -->--%>
        <%--</div>--%>

        <%--<!-- Navigation -->--%>
        <%--<nav id="nav">--%>
            <%--<ul class="main-menu nav navbar-nav navbar-right">--%>
                <%--<li><a href="index.html">Home</a></li>--%>
                <%--<li><a href="#">About</a></li>--%>
                <%--<li><a href="#">Courses</a></li>--%>
                <%--<li><a href="blog.html">Blog</a></li>--%>
                <%--<li><a href="contact.jsp">Contact</a></li>--%>
            <%--</ul>--%>
        <%--</nav>--%>
        <%--<!-- /Navigation -->--%>

    <%--</div>--%>
<%--</header>--%>
<%--<!-- /Header -->--%>

<%--<!-- Home -->--%>
<%--<div id="home" class="hero-area">--%>

    <%--<!-- Backgound Image -->--%>
    <%--<div class="bg-image bg-parallax overlay" style="background-image:url(./img/home-background.jpg)"></div>--%>
    <%--<!-- /Backgound Image -->--%>

    <%--<div class="home-wrapper">--%>
        <%--<div class="container">--%>
            <%--<div class="row">--%>
                <%--<div class="col-md-8">--%>
                    <%--<h1 class="white-text">Edusite Free Online Training Courses</h1>--%>
                    <%--<p class="lead white-text">Libris vivendo eloquentiam ex ius, nec id splendide abhorreant, eu pro alii error homero.</p>--%>
                    <%--<a class="main-button icon-button" href="#">Get Started!</a>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>

<%--</div>--%>
<%--<!-- /Home -->--%>

<%--<!-- jQuery Plugins -->--%>
<%--<script type="text/javascript" src="js/jquery.min.js"></script>--%>
<%--<script type="text/javascript" src="js/bootstrap.min.js"></script>--%>
<%--<script type="text/javascript" src="js/main.js"></script>--%>

<%--</body>--%>

<%--</html>--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>HTML Education Template</title>

    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Lato:700%7CMontserrat:400,600" rel="stylesheet">

    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="css/style.css"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>

<!-- Header -->
<header id="header" class="transparent-nav">
    <div class="container">

        <div class="navbar-header">
            <!-- Logo -->
            <div class="navbar-brand">
                <a class="logo" href="index.jsp">
                    <img src="./img/logo-alt.png" alt="logo">
                </a>
            </div>
            <!-- /Logo -->

            <!-- Mobile toggle -->
            <button class="navbar-toggle">
                <span></span>
            </button>
            <!-- /Mobile toggle -->
        </div>

        <!-- Navigation -->
        <nav id="nav">
            <ul class="main-menu nav navbar-nav navbar-right">
                <li><a href="login.jsp">Login</a></li>
                <li><a href="#">About</a></li>
                <li><a href="contact.jsp">Contact</a></li>
            </ul>
        </nav>
        <!-- /Navigation -->

    </div>
</header>
<!-- /Header -->

<!-- Home -->
<div id="home" class="hero-area">

    <!-- Backgound Image -->
    <div class="bg-image bg-parallax overlay" style="background-image:url(./img/home-background.jpg)"></div>
    <!-- /Backgound Image -->

    <div class="home-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <h1 class="white-text">Расписание ФПМИ БГУ</h1>
                    <p class="lead white-text">Курсовая работа. Мария Изобова 3 группа</p>

                        <!-- Default dropright button -->
                        <div class="btn-group dropright">
                            <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Dropright
                            </button>
                            <div class="dropdown-menu">
                                <!-- Dropdown menu links -->
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <a class="dropdown-item" href="#">Something else here</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Separated link</a>
                            </div>
                        </div>
                        <%--<div class="dropdown-menu" aria-labelledby="btnGroupDrop1">--%>
                            <%--<a class="dropdown-item" href="#">Dropdown link</a>--%>
                            <%--<a class="dropdown-item" href="#">Dropdown link</a>--%>
                        <%--</div>--%>

                    <%--<a class="main-button icon-button" href="#">Choose semester to start with!</a>--%>
                </div>
            </div>
        </div>
    </div>

</div>
<!-- /Home -->



<!-- jQuery Plugins -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/popper.min.js"></script>


</body>
</html>

