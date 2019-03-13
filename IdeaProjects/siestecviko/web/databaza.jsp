<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: student
  Date: 04.04.2018
  Time: 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Databaza</title>
</head>
<body>
<%
    String sqlQuery ="INSERT INTO users (meno, vek) VALUES (

    try(
            Connection con = DriverManager.getConnection("jdbc:mysql://")
            Statement s = con.createStatement();
            )
    {
        Class.forName("com.mysql.jdbc.Driver");
        out.println("pripojenie k db funguje");

        s.executeUpdate(sqlQuery);
    }
    catch (SQLException e)
%>
</body>
</html>
