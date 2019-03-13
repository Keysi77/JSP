<%@ page import="com.kmikt.ProductModel" %>
<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 19.04.2018
  Time: 8:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Uprava produktu</title>
    <%@include file="head.jsp"%>
  </head>
  <body>
    <%
      Integer id = null;

      try {
          id = Integer.valueOf(request.getParameter("id"));
      }
      catch (NumberFormatException e) {
            e.printStackTrace();
            response.sendRedirect("/zobraz.jsp");
      }


      ProductModel productModel = new ProductModel(); // potrebujem vyplnit udaje, ktore uz mam v DB do pomocneho objektu typu ProductModel

      try {
        Class.forName("com.mysql.jdbc.Driver");
      } catch (ClassNotFoundException e) {
        e.printStackTrace();
      }

      String sqlQuery = "SELECT * FROM produkty WHERE id=?";

      try (
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/produktycvicenia", "produktyCvicenia", "hesloheslo");
              PreparedStatement ps = con.prepareStatement(sqlQuery);
      ) {
        ps.setInt(1, id);
        try (ResultSet rs = ps.executeQuery();) {
          while (rs.next()) {
            productModel.setId(id);
            productModel.setAmount(rs.getInt("amount"));
            productModel.setName(rs.getString("name"));
            productModel.setPrice(rs.getString("price"));
          }
        } catch (SQLException e) {
          e.printStackTrace();
        }
      }

      if (productModel.getName() == null) {     // fix ak nahodou niekto zada nespravne id do url
          response.sendRedirect("/zobraz.jsp");
      }
    %>
    <div class="container">
      <form action="/updateItem" method="post" id="form">
        <div class="form-group">
          <label for="name">Brand</label>
          <input type="text" class="form-control" id="name" name="name" placeholder="Product name" value="<%=productModel.getName()%>">

        </div>

        <div class="form-group">
          <label for="price">Price</label>
          <input type="text" class="form-control" id="price" name="price" placeholder="Price, 10.30" value="<%=productModel.getPrice()%>">

        </div>

        <div class="form-group">
          <label for="amount">Amount</label>
          <input type="number" class="form-control" id="amount" name="amount" placeholder="Insert amount" value="<%=productModel.getAmount()%>">

        </div>
        <input type="hidden" name="id" value="<%=id%>">

        <button type="submit" class="btn btn-primary">Odoslať</button>
      </form>
    </div>
  </body>
</html>
