<%@page import="java.sql.*" %>
<%@ page import="javax.swing.plaf.nimbus.State" %>
<%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 28.03.2018
  Time: 12:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ukazka 2</title>
</head>
<body>
    <%
        String sqlQuery = "INSERT INTO users (name, age) VALUES (\"Miro\",30)";
        try(
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ukazkaPrednaska1", "ukazkaPrednaska1", "hesloheslo");
            Statement s = con.createStatement();  // vyuzivat len ak nemam vstup. parametre
        )
        {
            Class.forName("com.mysql.jdbc.Driver");

            out.print("Pripojeny k DB :)");

            s.executeUpdate(sqlQuery);   // insert, update, delete
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

    %>
</body>
</html>
