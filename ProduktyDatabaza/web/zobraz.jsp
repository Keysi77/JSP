<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 19.04.2018
  Time: 8:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Zobraz produkty</title>
    <%@include file="head.jsp"%>
</head>
<body>
    <div class="container">
        <table class="table table-striped">
            <%
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                }

                String sqlQuery = "SELECT * FROM produkty";

                try (
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/produktycvicenia", "produktyCvicenia", "hesloheslo");
                        PreparedStatement ps = con.prepareStatement(sqlQuery);
                        ResultSet rs = ps.executeQuery();
                ){

                    while (rs.next()) {
            %>
            <tr>
                <td><%=rs.getString("id")%></td>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("price")%></td>
                <td><%=rs.getString("amount")%></td>
                <td><a href="/deleteItem?id=<%=rs.getString("id")%>">Vymaz</a></td>
                <td><a href="/update.jsp?id=<%=rs.getString("id")%>">Upravit</a></td>
            </tr>
            <%
                    }

                }
                catch (SQLException e) {
                    e.printStackTrace();
                }
            %>
        </table>
    </div>
</body>
</html>
