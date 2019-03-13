<%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 21.03.2018
  Time: 8:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Polia</title>
    <%@include file="head.jsp"%>
</head>
<body>
    <%

        String[] array1 =  new String[20];  // vytvorenie pola typu String -> 10 prvkov

        for (int i = 0; i < array1.length; i++) {      // naplnenie pola v cykle for
            // array1.length nam vrati pocet prvkov v poli
            array1[i] = "pole" + (i + 1);
        }


    %>

    <table class="table table-striped">
        <tr>
            <%
                for (int i = 0; i < array1.length; i++) {  // zobrazenie udajov z pola
            %>
                <td><%=array1[i]%></td>
            <%
                }
            %>
        </tr>
    </table>

    <%
        String[][] array2 = new String[3][5];      // vytvorenie 2. rozmerneho pola, 3 riadky, 20 stlpcov

        for (int i = 0; i < array2.length ; i++) {      // prechadzanie riadkov array2.length nam vrati pocet riadkov
            for (int j = 0; j < array2[i].length; j++) {        // prechadzanie stlpcov array2[i].length nam vrati pocet stlpcov
                array2[i][j] = "pole" + (i + 1) + (j + 1);
            }
        }
    %>

    <table class="table table-striped">
        <%
            for (int i = 0; i < array2.length ; i++) {      // prechadzanie riadkov array2.length nam vrati pocet riadkov
                out.println("<tr>");

                for (int j = 0; j < array2[i].length; j++) {        // prechadzanie stlpcov array2[i].length nam vrati pocet stlpcov
                    out.println("<td>" + array2[i][j] + "</td>");
                }

                out.println("</tr>");
            }
        %>
    </table>


    <table class="table table-striped">
        <%
            for (int i = 0; i < array2.length; i++) {
        %>
            <tr>
                <%
                    for (int j = 0; j < array2[i].length; j++) {
                %>
                    <td>
                        <%=array2[i][j]%>
                    </td>
                <%
                    }
                %>
            </tr>
        <%
            }
        %>
    </table>
</body>
</html>
