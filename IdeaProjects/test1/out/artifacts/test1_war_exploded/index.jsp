<%@ page import="java.sql.*" %>

<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 25.04.2017
  Time: 8:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  </head>
  <body>

  <%
    Connection conn = null;
    Statement stat = null;
    ResultSet res = null;


    try{

      Class.forName("com.mysql.jdbc.Driver"); //nazov ovladaca
      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/stranger","stranger","123456");
      System.out.print("som pripojeny");
      String sql = "SELECT * FROM user";
      stat = conn.createStatement();
      res = stat.executeQuery(sql);

%>
  <table class="table">
    <tr>
      <td>ID</td>
      <td>Meno</td>
      <td>Tel.</td>
    </tr>

  <%
      while(res.next()){
        %>
    <tr>
        <td><%out.print(res.getInt("id"));%></td><%
        %><td><%out.print(res.getString("meno"));%></td><%
        %><td><%out.print(res.getInt("tel"));%></td>
    </tr>
      <%

      }

  %>
    </tr>
  </table>
  <%
    }catch (ClassNotFoundException ex){

      ex.printStackTrace();

    }catch (SQLException ex2){

      ex2.printStackTrace();

    }finally {
      try{
        if(conn!=null){
          conn.close();
        }
      }catch (SQLException e){
        e.printStackTrace();
      }

    }

  %>


  </body>
</html>
