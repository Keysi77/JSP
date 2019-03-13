<%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 07.03.2018
  Time: 8:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Kontakt</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css" type="text/css">
  </head>
  <body>
      <div class="top-img">
      </div>

      <%@include file="menu.jsp"%>

      <div class="div-img">

      </div>

      <div class="container">
          Kontakt - page!!!
      </div>

      <div class="container">
        <%
          for (int i = 1; i <= 8 ; i++){
        %>
          <p class="p10">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque porta scelerisque mauris, nec tincidunt urna consectetur et. Donec lacinia tortor et lacinia placerat. Fusce viverra mattis hendrerit. Vivamus dignissim elit odio. Nullam pharetra facilisis turpis, vitae faucibus odio porttitor at. Praesent imperdiet nunc tellus, ac finibus nulla posuere non. Sed cursus, metus sed consequat rhoncus, arcu dolor mattis sem, eget rhoncus massa felis nec sem. Aliquam erat volutpat. Maecenas consectetur nibh tellus, in sodales dui aliquam ac. Nunc tincidunt turpis eget neque consectetur, id auctor urna blandit. Morbi at rutrum mi. Duis fringilla lectus at odio hendrerit dictum. Nullam turpis erat, consectetur vel laoreet quis, scelerisque et est.
          </p>
        <%
          }
        %>
      </div>

  </body>
</html>
