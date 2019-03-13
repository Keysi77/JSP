<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 01.03.2018
  Time: 8:13
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>

    <title>$Title$</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
    <link href="css/style.css">

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js" integrity="sha384-a5N7Y/aK3qNeh15eJKGWxsqtnX/wWdSZSKp+81YjTmS15nvnvxKHuzaWwXHDli+4" crossorigin="anonymous"></script>
  </head>

  <body>

  <div class="container">  <div class="row"> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nisi mi, auctor vitae maximus porttitor, laoreet nec tellus. Vivamus vel augue nisl. Vivamus vulputate augue sed nibh posuere maximus. Etiam blandit purus dui, at euismod justo vulputate at. Praesent arcu libero, posuere ac congue vitae, tempor non ex. Vestibulum id aliquam turpis. Nam nec sem vel ipsum convallis dictum. Cras elementum, arcu ac accumsan feugiat, lectus nunc convallis velit, eu facilisis justo odio non mauris. Sed dapibus lacus velit, sed condimentum enim dapibus ut. Curabitur dictum ligula ut nisl viverra eleifend ac eget justo. Curabitur diam velit, rhoncus ut tempor eget, malesuada at odio.

    Suspendisse potenti. Vivamus lobortis eget justo id commodo. Praesent hendrerit odio sed nibh dictum lobortis. Phasellus nisl orci, vulputate scelerisque porta at, tempus non sem. Nunc viverra neque turpis, eu molestie sapien sollicitudin vel. Sed nulla est, tincidunt ut leo et, tincidunt volutpat ante. Sed augue mi, posuere sed nulla at, auctor pulvinar nisi. Etiam pulvinar metus eu facilisis vulputate. Mauris sit amet elit arcu. In sed tristique purus. Vivamus a mi a dolor malesuada aliquam.

  </div>
    <div class="row">
      <%
  int a=50;
  int b=70;

 if (a>b) { out.println("a=50 > b=70"); }
 else { out.println("a=50 < b=70"); }



  %>
  </div>

    <div class="row">

      <%


        char parameter='a';

switch(parameter) {

   case 'a':
         out.println("Spustit");
          break;
  case 'b':
    out.println("Pozastavit");
    break;

    case 'c':
    out.println("Vypnut");
    break;

    case 'd':
    out.println("Prepni pesnicku");
    break;

      }
      %>

    </div>


      <table class="table table-striped">

        <tr>
          <%
            for (int i=1; i<21; i++){
              out.println("<td>"+i +"</td>");
            }
          %>
        </tr>
      </table>



      <table class="table table-striped">
        <tr>
<%
      for (int j=1; j<13; j++){
          switch (j){
        case 1:
          out.println("<td>Január</td>");
          break;
        case 2:
          out.println("<td>Februar</td>");
          break;
        case 3:
          out.println("<td>Marec</td>");
          break;
        case 4:
          out.println("<td>April</td>");
          break;
        case 5:
          out.println("<td>Maj</td>");
          break;
        case 6:
          out.println("<td>Jun</td>");
          break;
        case 7:
          out.println("<td>Jul</td>");
          break;
        case 8:
          out.println("<td>August</td>");
          break;
        case 9:
          out.println("<td>September</td>");
          break;
        case 10:
          out.println("<td>Oktober</td>");
          break;
        case 11:
          out.println("<td>November</td>");
          break;
        case 12:
          out.println("<td>December</td>");
          break;
          }
      }



%>

        </tr>
      </table>
  </div>

  </body>
</html>
