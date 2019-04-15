<%@ page import="Databases.SQLiteClass" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
<header id="header">
    <div class="container">

        <div class="navbar-header">
            <!-- Logo -->
            <div class="navbar-brand">
                <%
                    String message = null;
                    String sessionID = null;
                    SQLiteClass.USER_TYPE userTitle = SQLiteClass.USER_TYPE.GUEST;

                    Cookie[] cookies = request.getCookies();
                    if(cookies != null){
                        for(Cookie cookie : cookies){
                            if(cookie.getName().equals("message")) message = cookie.getValue();
                            if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
                        }
                    }
                    String userName = SQLiteClass.getUserName(sessionID);
                    userTitle = SQLiteClass.getUserTitle(sessionID);

                %>
                <a class="logo" href="index.jsp">
                    <h3> Welcome, dear <%=userName%></h3>
                    <%--<img src="./img/logo.png" alt="logo">--%>
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
                <li><a href="index.jsp">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="contact.jsp">Contact</a></li>
                <li><a href="/LogoutServlet">Logout</a></li>
            </ul>
        </nav>
        <!-- /Navigation -->

    </div>
</header>
<!-- /Header -->

<!-- Hero-area -->
<div class="hero-area section">

    <!-- Backgound Image -->
    <div class="bg-image bg-parallax overlay" style="background-image:url(./img/page-background.jpg)"></div>
    <!-- /Backgound Image -->

    <div class="container">
        <div class="row">

            <div class="col-md-10 col-md-offset-1 text-center">

                <div class="btn-group-vertical">
                    <h1 class="white-text">Курс</h1>
                    <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                        <div class="btn-group-toggle mr-2" data-toggle="buttons">
                            <label class="btn btn-primary"><input type="checkbox" data-toggle="toggle">1</label>
                            <label class="btn btn-primary"><input type="checkbox" data-toggle="toggle">2</label>
                            <label class="btn btn-primary"><input type="checkbox">3</label>
                            <label class="btn btn-primary"><input type="checkbox">4</label>
                        </div>
                    </div>
                </div>



                <div class="btn-group-vertical">
                    <h1 class="white-text">Группа</h1>
                    <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                        <div class="btn-group" data-toggle="buttons">
                            <label class="btn btn-primary active"><input type="checkbox" checked>1</label>
                            <label class="btn btn-primary"><input type="checkbox">2</label>
                            <label class="btn btn-primary"><input type="checkbox">3</label>
                            <label class="btn btn-primary"><input type="checkbox">4</label>
                        </div>
                    </div>
                </div>
                <div class="btn-group-vertical">
                    <h1 class="white-text">День недели</h1>
                    <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                        <div class="btn-group mr-2" role="group" aria-label="First group">
                            <button type="button" class="btn btn-secondary">1</button>
                            <button type="button" class="btn btn-secondary">2</button>
                            <button type="button" class="btn btn-secondary">3</button>
                            <button type="button" class="btn btn-secondary">4</button>
                            <button type="button" class="btn btn-secondary">5</button>
                            <button type="button" class="btn btn-secondary">6</button>
                        </div>
                    </div>
                </div>
                <button class="main-button icon-button pull-right">Показать расписание</button>

            </div>
        </div>
    </div>

</div>

<!-- Blog -->
<div id="blog" class="section">

    <!-- container -->
    <div class="container">

        <!-- row -->
        <div class="row">

            <!-- main blog -->
            <div id="main" class="col-md-12">

                <!-- row -->
                <div class="row">

                    <!-- single blog -->
                    <div class="col-md-4">
                        <div class="single-blog">
                            <div class="blog-img">
                                <a href="chairsLIst.jsp">
                                    <img src="./img/about-video.jpg" alt="">
                                </a>
                            </div>

                        </div>
                    </div>
                    <!-- /single blog -->

                    <!-- single blog -->
                    <div class="col-md-4">
                        <div class="single-blog">
                            <div class="blog-img">
                                <a href="pattern.jsp">
                                    <img src="./img/blog02.jpg" alt="">
                                </a>
                            </div>

                        </div>
                    </div>
                    <!-- /single blog -->

                    <!-- single blog -->
                    <div class="col-md-4">
                        <div class="single-blog">
                            <div class="blog-img">
                                <a href="pattern.jsp">
                                    <img src="./img/blog04.jpg" alt="">
                                </a>
                            </div>

                        </div>
                    </div>
                    <!-- /single blog -->

                </div>
                <!-- /row -->
            </div>
            <!-- /main blog -->

            <div id="admin-class" style="display: none;">
                <div id="main2" class="col-md-12">
                    <div class="row">
                        <!-- single blog -->
                        <div class="col-md-4">
                            <div class="single-blog">
                                <div class="blog-img">
                                    <a href="chairsLIst.jsp">
                                        <img src="./img/course03.jpg" alt="">
                                    </a>
                                </div>

                            </div>
                        </div>
                        <!-- /single blog -->
                    </div>
                </div>
            </div>

            <%--Show admin-class block ONLY for Admin--%>
            <%
                if (userTitle.equals(SQLiteClass.USER_TYPE.ADMIN)) {
                %>
                    <script>
                        document.getElementById('admin-class').style.display = "block";
                    </script>
                <%
                }

            %>

        </div>
        <!-- row -->

        <%--<div class="row">--%>
            <%--<!-- main blog -->--%>
            <%--&lt;%&ndash;<div id="main2" class="col-md-12">&ndash;%&gt;--%>
                <%--&lt;%&ndash;&ndash;%&gt;--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
        <%--</div>--%>

    </div>
    <!-- container -->

</div>
<!-- /Blog -->


</body>
</html>
