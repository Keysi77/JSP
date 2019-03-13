<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: miro
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
        String sqlQuery = "INSERT INTO users (name, age) VALUES (\"Miro\",30)";

        try(
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ukazkaPrednask1", "ukazkaPrednask1", "hesloheslo") ;
            Statement s = con.createStatement();
        )
        {
            Class.forName("com.mysql.jdbc.Driver");

            out.println("pripojenie k db funguje");

            s.executeUpdate(sqlQuery);
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
    %>
</body>
</html>
