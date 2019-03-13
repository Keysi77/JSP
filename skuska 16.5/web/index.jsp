<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: Kanderka
  Date: 15.05.2017
  Time: 19:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>

      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <!-- Latest compiled and minified CSS -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

      <!-- Optional theme -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

      <!-- Latest compiled and minified JavaScript -->
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
      <script
              src="https://code.jquery.com/jquery-2.2.4.min.js"
              integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
              crossorigin="anonymous"></script>
    <title>Test</title>
  </head>
  <body>
  <%--<table>
    <tr>
      <td>id</td>
      <td>meno</td>
      <td>email</td>
      <td>km</td>
      <td>is_new</td>
      <td>type</td>
    </tr>--%>
<%--<%
  Connection con = null;
  PreparedStatement ps = null;
  ResultSet rs = null;

  try {
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam", "root", "");
    String sql = "SELECT * FROM `test`";
    ps = con.prepareStatement(sql);
    rs = ps.executeQuery();
System.out.println("Ok pripojeno");
    while (rs.next()) {%>


<tr>
  <td><%= rs.getString("id")%></td>
  <td><%= rs.getString("meno")%></td>
</tr>
    <%}


  } catch (SQLException e) {
      e.printStackTrace();
  }finally {
      if (ps != null) ps.close();
      if (rs != null) rs.close();
      if (con != null) con.close();
  }

%>--%>

<%--</table>--%>
<div class="container">
  <form method="post" id="myValid" action="/inserting" class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3">


      <div class="form-group">

          <label for="meno">Meno</label>

          <input type="text"  class="form-control" id="meno" name="meno">

      </div>


      <div class="form-group">

          <label for="km">km</label>

          <input type="text" class="form-control" id="km" name="km"     >

      </div>
      <div class="form-group">

          <label for="email">E-mail</label>

          <input type="text"  class="form-control" id="email" name="email"  >

      </div>

      <div class="radio">
          Auto je nove?
          <label><input type="radio" class="is_new" name="is_new" value="true">Ano</label>
          <label><input type="radio" class="is_new" name="is_new" value="false"
                        checked="checked">Nie</label>
      </div>
<div class="form-group">
      <select class="form-control" id="type_car" name="type_car">
          <option value="Rodinné">Rodinné<option>
          <option value="Úžitkové">Úžitkové<option>
          <option value="Terenne">Terenne<option>
      </select>
</div>

      <input type="submit" class="btn btn-primary"></input>

  </form>

</div>

  <table class="table ">
  <tr>
    <td>id</td>
    <td>meno</td>
    <td>email</td>
    <td>km</td>
    <td>is_new</td>
    <td>type</td>
  </tr>
  <%
  request.setCharacterEncoding("UTF-8");
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    try {
      Class.forName("com.mysql.jdbc.Driver");
      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam", "root", "");
      String sql = "SELECT * FROM `test`";
      ps = con.prepareStatement(sql);
      rs = ps.executeQuery();
  System.out.println("Ok pripojene");
      while (rs.next()) {%>


  <tr>
    <td><%= rs.getString("id")%></td>
    <td><%= rs.getString("meno")%></td>
    <td><%= rs.getString("email")%></td>
    <td><%= rs.getString("km")%></td>
    <td><%= rs.getBoolean("is_new")%></td>
    <td><%= rs.getString("type_car")%></td>
  </tr>
      <%}


    } catch (SQLException e) {
        e.printStackTrace();
    }finally {
        if (ps != null) ps.close();
        if (rs != null) rs.close();
        if (con != null) con.close();
    }

  %>

  <%--</table>--%>

      <script src="js/jquery.validate.min.js"></script>
      <script src="js/myValid.js"></script>

  </body>
</html>
