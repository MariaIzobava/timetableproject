<%@ page import="Databases.SQLiteClass" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Databases.SQLChairsAccessClass" %>
<%@ page import="ParsingExel.SheetParser" %><%--
  Created by IntelliJ IDEA.
  User: mariaizobova
  Date: 4/7/19
  Time: 8:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>HTML Education Template</title>
    <script type="text/javascript"> </script>

    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Lato:700%7CMontserrat:400,600" rel="stylesheet">

    <!-- Bootstrap -->
    <%--<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>--%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="css/style.css"/>

    <link type="text/css" rel="stylesheet" href="css/main.css"/>


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

    <script src="https://code.jquery.com/jquery-3.1.1.min.js"> </script>
    <%--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>--%>
    <%--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>--%>
    <script type="text/javascript" src="js/script.js"></script>
    <![endif]-->
</head>
<body>
<!-- Header -->
<header id="header" style="border-color: #FF6700;">
    <div class="container" >

        <%--<div class="navbar-header">--%>
        <%--<!-- Logo -->--%>
        <%--<div class="navbar-brand">--%>
        <%--<%--%>
        <%--String message = null;--%>
        <%--String sessionID = null;--%>
        <%--SQLiteClass.USER_TYPE userTitle = SQLiteClass.USER_TYPE.GUEST;--%>

        <%--Cookie[] cookies = request.getCookies();--%>
        <%--if(cookies != null){--%>
        <%--for(Cookie cookie : cookies){--%>
        <%--if(cookie.getName().equals("message")) message = cookie.getValue();--%>
        <%--if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();--%>
        <%--}--%>
        <%--}--%>
        <%--String userName = SQLiteClass.getUserName(sessionID);--%>
        <%--userTitle = SQLiteClass.getUserTitle(sessionID);--%>

        <%--%>--%>
        <%--<a class="logo" href="index.jsp">--%>
        <%--<h3> Welcome, dear <%=userName%></h3>--%>
        <%--&lt;%&ndash;<img src="./img/logo.png" alt="logo">&ndash;%&gt;--%>
        <%--</a>--%>
        <%--</div>--%>
        <%--<!-- /Logo -->--%>

        <%--<!-- Mobile toggle -->--%>
        <%--<button class="navbar-toggle">--%>
        <%--<span></span>--%>
        <%--</button>--%>
        <%--<!-- /Mobile toggle -->--%>
        <%--</div>--%>

        <!-- Navigation -->
        <nav id="nav">
            <ul class="main-menu nav navbar-nav mr-sm-2">
                <li><a href="main.jsp">Back</a></li>
            </ul>
        </nav>
        <!-- /Navigation -->

    </div>
</header>
<!-- /Header -->

<div class="container-fluid" style="background-color: #eeeeee;">
    <div class="row" style="height: 35px;">

    </div>

</div>

<div class="container-fluid"  style="background-color: #eeeeee;">
    <div class="row">
        <div class="col-md-3 border-left-0 pattern-border" style="background-color: #ffffff;
            border-radius: 0 40px 40px 0; " >
            <div class="list-group  list-group-flush">

                <%
                    ArrayList<String> chairsList = SQLChairsAccessClass.getChairsList();
                    for (String chair : chairsList) {

                        %>
                        <div class="list-group-item"  style="border-radius: 0 40px 40px 0; ">
                            <li><a href="#" onclick="return updateTable('<%=chair%>');"> <%=chair%> </a></li>
                        </div>

                        <%
                    }
                %>
            </div>
        </div>
        <div class="col-md-1" style="background-color: #eeeeee;">
            <form action="/UploadServlet" method="post">
            <button type="submit" class="btn btn-success">
                Add new
            </button>
            </form>
        </div>
        <div class="col-md-8 pattern-border" style=" background-color: #ffffff;">
            <table class="table table-sm table-bordered table-hover table-responsive">
                <thead>
                <tr>
                    <th>
                        #
                    </th>
                    <th>
                        Course
                    </th>
                    <th>
                        Group
                    </th>
                    <th>
                        Subgroup
                    </th>
                    <th>
                        Subject
                    </th>
                    <th>
                        Type
                    </th>
                    <th>
                        Teacher
                    </th>
                    <th>
                        Preferences
                    </th>
                    <th>
                        Notes
                    </th>

                </tr>
                </thead>
                <tbody id="table_names">
                <%--<tr>--%>
                    <%--<td>--%>
                        <%--1--%>
                    <%--</td>--%>
                    <%--<td>--%>
                        <%--TB - Monthly--%>
                    <%--</td>--%>
                    <%--<td>--%>
                        <%--01/04/2012--%>
                    <%--</td>--%>
                    <%--<td>--%>
                        <%--Default--%>
                    <%--</td>--%>
                <%--</tr>--%>
                <%--<tr class="table-active">--%>
                    <%--<td>--%>
                        <%--1--%>
                    <%--</td>--%>
                    <%--<td>--%>
                        <%--TB - Monthly--%>
                    <%--</td>--%>
                    <%--<td>--%>
                        <%--01/04/2012--%>
                    <%--</td>--%>
                    <%--<td>--%>
                        <%--Approved--%>
                    <%--</td>--%>
                <%--</tr>--%>
                <%--<tr class="table-success">--%>
                    <%--<td>--%>
                        <%--2--%>
                    <%--</td>--%>
                    <%--<td>--%>
                        <%--TB - Monthly--%>
                    <%--</td>--%>
                    <%--<td>--%>
                        <%--02/04/2012--%>
                    <%--</td>--%>
                    <%--<td>--%>
                        <%--Declined--%>
                    <%--</td>--%>
                <%--</tr>--%>
                <%--<tr class="table-warning">--%>
                    <%--<td>--%>
                        <%--3--%>
                    <%--</td>--%>
                    <%--<td>--%>
                        <%--TB - Monthly--%>
                    <%--</td>--%>
                    <%--<td>--%>
                        <%--03/04/2012--%>
                    <%--</td>--%>
                    <%--<td>--%>
                        <%--Pending--%>
                    <%--</td>--%>
                <%--</tr>--%>
                <%--<tr class="table-danger">--%>
                    <%--<td>--%>
                        <%--4--%>
                    <%--</td>--%>
                    <%--<td>--%>
                        <%--TB - Monthly--%>
                    <%--</td>--%>
                    <%--<td>--%>
                        <%--04/04/2012--%>
                    <%--</td>--%>
                    <%--<td>--%>
                        <%--Call in to confirm--%>
                    <%--</td>--%>
                <%--</tr>--%>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
