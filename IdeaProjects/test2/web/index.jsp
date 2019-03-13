<%--
  Created by IntelliJ IDEA.
  User: Keys1
  Date: 4. 4. 2018
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Test</title>
    <%@include file="head.jsp"%>

  </head>
  <body>
  <%
    // PREMENNE VYPIS
    String lorem="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.";
    int cislo=5;

  %>
  <div class="container color1">
  <%=lorem%>
    <%=cislo%>
  </div>
  <%
    out.println("bla bla bla " + cislo + " " +lorem);
  %>

  <div class="row container">
  <%
    // IF ELSE
    int a=50;
    int b=45;
    if (a>b){%>
        <p>Hodnota je a=<%=a%></p>
    <%}else{%>
      <p> Hodnota je mensia b=<%=b%></p>
  <%}%>
  </div>

<br>
    <%
      // SWITCH
      char parameter = 5;
      switch (parameter){
        case 1:
            out.println("parameter je 1");
            break;
        case 2:
            out.println("parameter je 2");
            break;
            default:
                out.println("nieje zadany");
      }
    %>
  <br>

    <table class="table table-striped">
      <tr>
        <%
         // FOR
          // tabulka
          for (int i=1; i<12;i++){
              out.println("<td>"+i+"</td>");
          }
        %>
      </tr>
    </table>

  <table class="table table-striped">
    <tr>
      <%
       // String outputM = "";
        for (int i = 1 ; i <= 15 ; i++) {
      %>
            <td>
              <%
          switch (i) {
            case 1:
              out.println("januar");
              break;
            case 2:
              out.println("februar");
              break;
            case 3:
              out.println("marec");
              break;
            case 4:
              out.println("april");
              break;
            case 5:
              out.println("maj");
              break;
            case 6:
              out.println("jun");
              break;
            case 7:
              out.println("jul");
              break;
            case 8:
              out.println("august");
              break;
            case 9:
              out.println("september");
              break;
            case 10:
              out.println("oktober");
              break;
            case 11:
              out.println("november");
              break;
            case 12:
              out.println("december");
              break;
            default:
              out.println("nenaslo");
          }
      %>
            </td>
      <%
        }
      %>

    </tr>
  </table>

  <table class="table table-striped">
    <tr>
      <% // druhy sposob cez prazdny retazec ako pomocnu premennu outputM
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



  <div class="container">
    <form action="spracuj.jsp" method="post">
      <div class="form-group">
        <label for="meno">Meno</label>
        <input type="text" class="form-control" id="meno" name="meno" placeholder="Zadajte meno">
      </div>

      <div class="form-group">
        <label for="priezvisko">Priezvisko</label>
        <input type="text" class="form-control" id="priezvisko" name="priezvisko" placeholder="Zadajte priezvisko">
      </div>

      <div class="form-group">
        <label for="vek">Vek</label>
        <input type="text" class="form-control" id="vek" name="vek" placeholder="Zadajte vek">
      </div>

      <div class="form-group">
        <label for="email">Priezvisko</label>
        <input type="email" class="form-control" id="email" name="email" placeholder="Zadajte email">
      </div>


      <button type="submit" class="btn btn-primary">Odoslať</button>
    </form>
  </div>


  </body>
</html>
