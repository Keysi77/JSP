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
        String sqlQuery = "DELETE FROM users WHERE id = ?";
        try(
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ukazkaPrednaska1", "ukazkaPrednaska1", "hesloheslo");
            PreparedStatement ps = con.prepareStatement(sqlQuery);
        ){
            Class.forName("com.mysql.jdbc.Driver");

            out.print("Pripojeny k DB :)");

            ps.setInt(1,10);     // vlozenie hdnoty Miroslav za 1. otaznik
                         // vlozenie hodnoty 33 za 2. otaznik
            ps.execute();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
    %>
</body>
</html>
