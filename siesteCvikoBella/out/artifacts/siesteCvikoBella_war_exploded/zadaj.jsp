<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 29.03.2018
  Time: 9:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Zadaj</title>
    <%@include file="head.jsp"%>
</head>
<body>
<form action="index.jsp" value="otazky">
    <div class="container">
    <div class="form-group">
        <label for="question">Zadaj otázku</label>
        <input type="text" class="form-control" name="question" id="question" value="question" placeholder="zadajte otázku">
    </div>
    <select class="form-control" name="answer" id="answer" value="answer">
        <option value="true">True</option>
        <option value="true">False</option>
    </select>


        <button type="submit" class="btn btn-primary">Odoslať údaje</button>

    </div>
</form>
</body>
</html>
