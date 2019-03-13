<%@ page import="com.companyabc.users.LoginCheck" %><%--
  Created by IntelliJ IDEA.
  User: student
  Date: 13.03.2017
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>
<body>
<form class="form-horizontal col-lg-6" action="login.jsp" method="post">
    <fieldset>
        <legend>Formular</legend>
        <div class="form-group">
            <label for="login" class="col-lg-2 control-label">Meno</label>
            <div class="col-lg-10">
                <input class="form-control" id="login" placeholder="login" type="text" name="login" required>
            </div>
        </div>

        <div class="form-group">
            <label for="inputEmail" class="col-lg-2 control-label">Email</label>
            <div class="col-lg-10">
                <input class="form-control" id="inputEmail" placeholder="Email" type="email" name="mail" required>
            </div>
        </div>

        <div class="form-group">
            <label for="heslo" class="col-lg-2 control-label">Heslo</label>
            <div class="col-lg-10">
                <input class="form-control" id="heslo" placeholder="heslo" type="password" name="heslo" required>
            </div>
        </div>

        <div class="form-group">
            <div class="col-lg-10 col-lg-offset-2">
                <button type="submit" class="btn btn-danger">Prihlasiť</button>
            </div>
        </div>

    </fieldset>
</form>

<%
    String login = request.getParameter("login");
    String heslo = request.getParameter("heslo");

    LoginCheck loginCheck = new LoginCheck();
    if (login != null && heslo != null){

        if(loginCheck.isValid(login,heslo)){
    out.println("uspesne prihlaseny ako:" +request.getParameter("login"));

    }
    else{
        out.println("Nezadali ste spravne udaje");}
        }
%>


</body>
</html>
