<%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 01.03.2018
  Time: 8:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Nove cviko</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet" type="text/css">
  </head>
  <body>
      <div class="container">
          <div class="row">
            Lorem ipsum dolor sit amet.
          </div>

          <div class="row">
            <%
              //TODO: Vytvorte 2 prem. a porovnajte ich
              int a = 80; // vytvorenie prem. a typu int
              int b = 10;
              /*
                Podmienka,ktora porovnava ci a > b
                ak ano tak sa zobrazi udaj Hodnota z a = 80 > ako hodnota z b = 10
               */
              if ((a > b && a < 100) || (a > b && a < 200)) {
            %>
              Hodnota z a = <%=a%> > ako hodnota z b = <%=b%>
            <%
              }
              else {
            %>
            Hodnota z a = <%=a%> < ako hodnota z b = <%=b%>
            <%
              }
            %>
          </div>

          <div class="row">
            <%
              char parameter = 'a';
              switch (parameter) {
                case 'a':
                        out.println("Parameter pre prikaz je a a znamena -> spustit");
                        break;
                case 'b':
                        out.println("Parameter pre prikaz je b a znamena -> pozastavit");
                        break;
                case 'c':
                        out.println("Parameter pre prikaz je c a znamena -> vypnut");
                        break;
                case 'd':
                        out.println("Parameter pre prikaz je d a znamena -> prepni pesnicku");
                        break;
                default:
                        out.println("Nepoznam parameter");
              }
            %>
          </div>

          <div class="row">
            <table class="table table-striped">
              <tr>
                <%
                  for (int i = 1 ; i <= 20 ; i++) {
                      out.println("<td>" + i + "</td>");
                  }
                %>
              </tr>
            </table>
          </div>

        <div class="row">
          <table class="table table-striped">
            <tr>
              <%
                String output = "";
                for (int i = 1 ; i <= 20 ; i++) {
                  output += "<td>" + i + "</td>";
                }
              %>
              <%=output%>
            </tr>
          </table>
        </div>

        <div class="row">
          <table class="table table-striped">
            <tr>
              <%
                for (int i = 1 ; i <= 20 ; i++) {
              %>
                <td><%=i%></td>
              <%
                }
              %>

            </tr>
          </table>
        </div>

        <div class="row">
          <table class="table table-striped">
            <tr>
              <%
                String outputM = "";
                for (int i = 1 ; i <= 12 ; i++) {
                  switch (i) {
                    case 1:
                      outputM = "Jan";
                      break;
                    case 2:
                      outputM = "Feb";
                      break;
                    case 3:
                      outputM = "Mar";
                      break;
                    case 4:
                      outputM = "Apr";
                      break;
                    case 5:
                      outputM = "Maj";
                      break;
                    case 6:
                      outputM = "Jun";
                      break;
                    case 7:
                      outputM = "Jul";
                      break;
                    case 8:
                      outputM = "Aug";
                      break;
                    case 9:
                      outputM = "Sep";
                      break;
                    case 10:
                      outputM = "Okt";
                      break;
                    case 11:
                      outputM = "Nov";
                      break;
                    case 12:
                      outputM = "Dec";
                      break;
                    default:
                      outputM = "Error";
                  }
              %>
              <td><%=outputM%></td>
              <%
                }
              %>

            </tr>
          </table>
        </div>

      </div>
  </body>
</html>
