<%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 29.03.2018
  Time: 9:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Formulár pre zadávanie otázok</title>
    <%@include file="head.jsp"%>
</head>
<body>
    <div class="container">
        <form action="spracuj.jsp" method="post">
            <div class="form-group">
                <label for="question">Otázka do kvízu</label>
                <input type="text" class="form-control" id="question" name="question" placeholder="Zadajte otázku">

            </div>
            <div class="form-group">
                <label for="answer">Odpoveď</label>
                <select name="answer" id="answer" class="form-control">
                    <option value="true">Áno</option>
                    <option value="false">Nie</option>
                </select>

            </div>

            <button type="submit" class="btn btn-primary">Odoslať</button>
        </form>
    </div>
</body>
</html>
