<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 15.03.2018
  Time: 8:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>formular</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

  </head>
  <body>
  <form name="myForm" class="form-inline" action="spracuj.jsp">
    <label class="sr-only" for="inlineFormInput">Name</label>
    <input type="text" name="username" class="form-control mb-2 mr-sm-2 mb-sm-0" id="inlineFormInput" placeholder="Name">

    <div class="form-group row">
      <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
      <div class="col-sm-10">
        <input type="email" name="email" class="form-control" id="inputEmail3" placeholder="Email">
      </div>
    </div>

    <div class="form-group row">
      <label for="inlineFormInput" class="col-sm-2 col-form-label">Telephone</label>
      <div class="col-sm-10">
        <input type="text" name="mobile" class="form-control" placeholder="0900111222">
      </div>
    </div>


    <button type="submit" value="spracuj.jsp" class="btn btn-primary">Submit</button>
  </form>

  </body>
</html>
