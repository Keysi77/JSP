<%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 09.05.2018
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="/fileUpload" method="post" enctype="multipart/form-data">
    <input type="file" name="file">
    <input type="submit" value="Upload file">
  </form>
  </body>
</html>
