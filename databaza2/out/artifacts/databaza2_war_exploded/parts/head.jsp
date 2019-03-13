<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 05.04.2018
  Time: 9:29
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*" %>
<%@ page import="com.kmikt.Connect" %>
<%
   // String pageName = request.getRequestURI();
   // out.println (pageName);
   // String pageName = uri.substring(uri.lastIndexOf("/")+1);

%>

<html>
<!-- jQuery validator-->
<link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">

<script
        src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous">
</script>

<!-- Bootstrap -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>

<!-- Vlasté JScripty a CSSka -->
<script src="../js/messages_sk.js"></script>
<script src="../js/overenie.js"></script>


<link rel="stylesheet" href="../css/styles.css?ver=1" type="text/css">

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<%
    String pageName = request.getRequestURI();

%>

<header class="site-header">
    <nav class="container">
        <ul class="menu">
            <%
                if (pageName.equals("/index.jsp"))out.println("<li><H3>Domov</H3></li>  ");
            else out.println("<li><a href=\"/index.jsp\">Domov</a></li>");

            if (pageName.equals("/adopcia.jsp"))out.println("<li><H3>Adopcia</H3></li>  ");
            else out.println("<li><a href=\"/adopcia.jsp\">Adopcia</a></li>");

            if (pageName.equals("/produkty.jsp"))out.println("<li><H3>Produkty</H3></li>  ");
            else out.println("<li><a href=\"/produkty.jsp\">Produkty</a></li>");

          %>
            <!-- <li><a href="index.php">Domov</a></li>
            <li><a href="adopcia.php">Adopcia</a></li>
            <li><a href="sluzby.php">Služby</a></li>
            <li><a href="tim.php">Tím</a></li>
            <li><a href="kontakt.php">Kontakt</a></li> -->
        </ul>
    </nav>
</header>

<!--
<body>

<div class="slideshow-container">

    <div class="mySlides fade">
        <img class="img-nav" src="obrazky/img1.jpg" >
    </div>

    <div class="mySlides fade">
        <img class="img-nav" src="obrazky/img2.jpg" >
    </div>

    <div class="mySlides fade">
        <img class="img-nav" src="obrazky/img3.jpg" >
    </div>

    <div class="mySlides fade">
        <img class="img-nav" src="obrazky/img4.jpg" >
    </div>

    <div class="mySlides fade">
        <img class="img-nav" src="obrazky/img5.jpg" >
    </div>

    <div class="mySlides fade">
        <img class="img-nav" src="obrazky/img6.jpg" >
    </div>

</div>
<br>

<div style="text-align:center">
    <span class="dot"></span>
    <span class="dot"></span>
    <span class="dot"></span>
    <span class="dot"></span>
    <span class="dot"></span>
    <span class="dot"></span>
</div>
-->
