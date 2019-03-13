<%@ page import="com.kmikt.User" %><%--
  Created by IntelliJ IDEA.
  User: student
  Date: 15.03.2018
  Time: 9:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


</head>
<body>
<%

    User user = new User();
    user = (User) session.getAttribute("user");
/*
    user.setEmail(request.getParameter("email"));
    user.setUserName(request.getParameter("username"));
    user.setMobile(request.getParameter("mobile"));

 String username = request.getParameter("username");
 session.setAttribute("username", username);
 session.getAttribute("username");

*/
%>

<table class="table">
    <thead>
    <tr>
        <th scope="col">Meno</th>
        <th scope="col">Mobil</th>
        <th scope="col">Email</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td><%user.getUserName();%></td>
        <td><%user.getEmail();%></td>
        <td><%user.getMobile();%><</td>
    </tr>
    </tbody>
</table>


</body>
</html>
