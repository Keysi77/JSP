<%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 28.02.2018
  Time: 8:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Druhe cviko</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">

  </head>
  <body>
    <%
      out.println("Funguje");
      //TODO:
      // 1. Vytvorit 2 premenne typu int a, b
      // 2. a -> 20, b -> 50
      // 3. vytvorte podmienku ak a > b -> Hodnota z a > hondota z b
      // 4. ak to nie je pravda tak vypisete Hodnotaz z b > hodnota z a
    %>
    <div class="row">
      <div class="container">
      <%
        int a = 20;
        int b = 50;
        if (a > b){
            out.print("Hdnota z a = " + a + " > ako hodnota z b = " +b);
        }
        else {
          out.print("Hdnota z a = " + a + " < ako hodnota z b = " +b);
        }
      %>
      </div>
    </div>

    <div class="row">
      <div class="container">
        <%
          int a1 = 20;
          int b1 = 50;
          if (a1 > b1){
              //out.print("Hdnota z a1 = " + a1 + " > ako hodnota z b1 = " +b1);
        %>
          Hodnota z a1 = <%=a1%> > ako hodnota z b1 = <%=b1%>
        <%
          }
          else {
              //out.print("Hdnota z a1 = " + a1 + " < ako hodnota z b1 = " +b1);
        %>
          Hodnota z a1 = <%=a1%> < ako hodnota z b1 = <%=b1%>
        <%
          }
        %>
      </div>
    </div>

    <div class="row">
      <div class="container">
        <%
          int a2 = 80;
          int b2 = 50;
          int c2 = 10;
          if (a2 > b2 && a2 > c2){
            out.print("Hdnota a je >>>");
          }
          else {
            out.print("Hdnota a !<<< ");
          }
        %>
      </div>
    </div>

    <div class="row">
      <div class="container">
        <%
          int x = 20;
          int y = 20;
          int z = 20;
          if (x > 20){
            out.print("x > 20");
          }
          else if (y > 20){
            out.print("y > 20");
          }
          else if (z > 20){
            out.print("z > 20");
          }
          else {
            out.print("x < 20 a zaroven y < 20");
          }
        %>
      </div>
    </div>

    <%
      //TODO: vytvorte prem. t, ktora moze nadobudat hodnoty <1,7>
      // ak t=1 -> Pondelok, ak t=2 -> Utorok ...
    %>
    <%! int t = 8; %>

    <div class="row">
      <div class="container">
        <%
          switch (t) {
            case 1:
                out.println("Pondelok");
                break;    // ak najde ze t==1 tak vypise Pondelok a zaroven ukonci switch
            case 2:
              out.println("Utorok");
              break;
            case 3:
              out.println("Streda");
              break;
            case 4:
              out.println("Stvrtok");
              break;
            case 5:
              out.println("Piatok");
              break;
            case 6:
              out.println("Sobota");
              break;
            case 7:
              out.println("Nedela");
              break;
            default:
              out.println("Nespravny den");
          }

        %>
      </div>
    </div>

    <div class="row">
      <div class="container">
        <%
          //TODO: vytvorte cyklus od 1 po 7 a ak  cislo = 1 -> vypise Pondelok, ak 2 -> Utorok...
          for (int i = 1; i < 8 ; i++) {
            switch (i) {
              case 1:
                out.println("Pondelok");
                break;    // ak najde ze t==1 tak vypise Pondelok a zaroven ukonci switch
              case 2:
                out.println("Utorok");
                break;
              case 3:
                out.println("Streda");
                break;
              case 4:
                out.println("Stvrtok");
                break;
              case 5:
                out.println("Piatok");
                break;
              case 6:
                out.println("Sobota");
                break;
              case 7:
                out.println("Nedela");
                break;
              default:
                out.println("Nespravny den");
            }
          }

        %>
      </div>
    </div>

    <div class="row">
      <div class="container">
        <table class="table table-striped">
          <tr>
            <%
              for ( int i = 1 ; i <= 10 ; i++ ) {
                  out.println("<td>" + i + "</td>");
              }
            %>
          </tr>
        </table>

      </div>
    </div>

      <div class="row">
        <div class="container">
          <table class="table table-striped">
            <tr>
              <%
                for ( int i = 1 ; i <= 10 ; i++ ) {
              %>
                  <td> <%=i%> </td>
              <%
                }
              %>
            </tr>
          </table>

        </div>
    </div>
  </body>
</html>
