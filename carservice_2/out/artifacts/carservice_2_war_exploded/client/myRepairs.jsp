<%@ page import="com.carservice.controller.dao.RepairImplement" %>
<%@ page import="com.carservice.model.Repair" %>
<%@ page import="java.util.ArrayList" %>
<%@include file="../includes/header.jsp" %>
<title>Login client</title>
<%@include file="includes/navbar.jsp" %>
<%
    if (session.getAttribute("client_email") == null) {
        response.sendRedirect("index.jsp");
        return;
    }
%>
</head>
<body>
<%
    String emailOfClient = String.valueOf(session.getAttribute("client_email"));
    RepairImplement repairDao = new RepairImplement();
    /*ArrayList<Repair> repairs = new ArrayList<>();*/
    ArrayList<Repair> repairsNew = new ArrayList<>();
   /* repairs = repairDao.getAllClientsRepairs(emailOfClient);*/
    repairsNew = repairDao.getAllClientsRepairsWithStatus(emailOfClient);
%>
<br>
<div class="container">
    <div class="row">
        <h1>My car Repairs</h1>
        <h2>Hi, <%out.println((String) session.getAttribute("client_email"));%></h2>
      <%--  <a href="/client/logOutClient.jsp">Odhlas
            sa:</a> <%out.println(" " + (String) session.getAttribute("client_email"));%>--%>
        <div class="col-lg-12">
            <%--<table class=" table table-bordered">
                <thead>
                <tr>
                    <td>id_repair</td>
                    <td>client_email</td>
                    &lt;%&ndash;<td>id_client</td>&ndash;%&gt;
                    <td>car_brand</td>
                    <td>car_model</td>
                    <td>motor_vehicle_licence_plate</td>
                    <td>vin_number</td>
                    <td>what_repair</td>
                    <td>status</td>
                    <td>Edit</td>
                    &lt;%&ndash;<td>Delete</td>&ndash;%&gt;
                </tr>
                </thead>
                <%
                    for (int i = 0; i < repairs.size(); i++) {
                %>
                <tr>
                    <td><%=repairs.get(i).getId_repair()%>
                    </td>
                    <td><%=repairs.get(i).getClient_email()%>
                    </td>
                    &lt;%&ndash;<td><%=repairs.get(i).getId_client()%></td>&ndash;%&gt;
                    <td><%=repairs.get(i).getCar_brand()%>
                    </td>
                    <td><%=repairs.get(i).getCar_model()%>
                    </td>
                    <td><%=repairs.get(i).getMotor_vehicle_licence_plate()%>
                    </td>
                    <td><%=repairs.get(i).getVin_number()%>
                    </td>
                    <td><%=repairs.get(i).getWhat_repair()%>
                    </td>
                    <td><%=repairs.get(i).getStatus_repair()%>

                        &lt;%&ndash;<%
                            switch (repairs.get(i).getStatus_repair()) {
                                case 0 :
                                    out.println("<div class=\"alert alert-warning\">Spracovavame Objednavku a este ju mozete upravit</div>");
                                    break;
                                case 1 :
                                    out.println("<div class=\"alert alert-Info\">Objednavku sme videli, a netreba ju s vami konzultovat</div>");
                                    break;
                                case 2 :
                                    out.println("<div class=\"alert alert-Info\">Budeme vas kontaktovat pre objasnenie</div>");
                                    break;
                                case 3 :
                                    out.println("<div class=\"alert alert-Info\">Na aute sa pracuje</div>");
                                    break;
                                case 4 :
                                    out.println("<div class=\"alert alert-success\">Super vase auto je pripravene a mozete si ho vyzdvihnut</div>");
                                    break;
                                case 5 :
                                    out.println("<div class=\"alert alert-danger\">Nastala zavazna chyba</div>");
                                    break;
                                default:
                                    out.println("<div class=\"alert alert-success\">Spracovavame Objednavku</div>");
                            }
                        %>&ndash;%&gt;








                    </td>
                    <td><a href="/client/updateRepair.jsp?id_repair=<%=repairs.get(
i).getId_repair()%>" class="btn btn-warning">Edit jsp</a>

                    </td>
                    <td>
                      &lt;%&ndash;  <button id="btnId_repair" class="btn btn-danger" value="<%=repairs.get(i).getId_repair()%>"
                                class="btnClAdmin "><span
                                class="glyphicon glyphicon-remove"></span></button>&ndash;%&gt;
                    </td>
                </tr>
                <%
                    }
                %>

            </table>--%>
<%--        </div>
    </div>
</div>--%>

<%--<script>
    function doAjax(id) {
        $.ajax({
            url: "/deleteRepair?id_repair=" + id
        }).done(function (result) {
            $('.result').html(result);
            location.reload();
        });
    };

    $(function () {
        $("button#btnId_repair").click(function () {
            var id = $(this).val();
            doAjax(id);
        });
    });


</script>--%>



<table class="table table-hover text-center">
    <thead>
    <tr>
        <%--<td>id_repair</td>
        <td>client_email</td>--%>
        <%--<td>id_client</td>--%>
        <td>car_brand</td>
        <td>car_model</td>
        <td>motor_vehicle_licence_plate</td>
        <td>vin_number</td>
        <td>what_repair</td>
        <%--<td>status</td>--%>
        <td>status_repair</td>
        <td>Edit</td>
        <td>Detail</td>
        <%--<td>Delete</td>--%>
    </tr>
    </thead>
    <%
        for (int i = 0; i < repairsNew.size(); i++) {
    %>

    <%
        if (repairsNew.get(i).getStatus_repair() == 1) {
            out.println("<tr class=\"info\">");
        } else if (repairsNew.get(i).getStatus_repair() == 2) {
            out.println("<tr class=\"warning\">");
        } else if (repairsNew.get(i).getStatus_repair() == 3) {
            out.println("<tr class=\"success\">");
        } else if (repairsNew.get(i).getStatus_repair() == 4) {
            out.println("<tr class=\"danger\">");
        } else {
            out.println("<tr>");
        }
    %>

    <%--<tr>--%>
       <%-- <td><%=repairsNew.get(i).getId_repair()%>--%>
       <%-- </td>--%>
       <%-- <td><%=repairsNew.get(i).getClient_email()%>--%>
       <%-- </td>--%>
        <%--<td><%=repairs.get(i).getId_client()%></td>--%>
        <td><%=repairsNew.get(i).getCar_brand()%>
        </td>
        <td><%=repairsNew.get(i).getCar_model()%>
        </td>
        <td><%=repairsNew.get(i).getMotor_vehicle_licence_plate()%>
        </td>
        <td><%=repairsNew.get(i).getVin_number()%>
        </td>
        <td><%=repairsNew.get(i).getWhat_repair()%>
        </td>
       <%-- <td><%=repairsNew.get(i).getStatus()%></td>--%>

        <td>


            <%--<%=repairsNew.get(i).getStatus_repair()%>--%>
               <strong> <%=repairsNew.get(i).getStatus()%></strong>
            <%--<%
                switch (repairsNew.get(i).getStatus_repair()) {
                    case 1 :
                        out.println("<div class=\"alert alert-info\">"+repairsNew.get(i).getStatus()+"</div>");
                        break;
                    case 2 :
                        out.println("<div class=\"alert alert-warning\">"+repairsNew.get(i).getStatus()+"</div>");
                        break;
                    case 3 :
                        out.println("<div class=\"alert alert-success\">"+repairsNew.get(i).getStatus()+"</div>");
                        break;
                    case 4 :
                        out.println("<div class=\"alert alert-danger\">"+repairsNew.get(i).getStatus()+"</div>");
                        break;
                    default:
                        out.println("<div class=\"alert\">Zatial nic</div>");
                }
            %>--%>



        </td>
        <td><a href="/client/updateRepair.jsp?id_repair=<%=repairsNew.get(
i).getId_repair()%>" class="btn btn-warning">Edit jsp</a>

        </td>
       <%-- <td>--%>
            <%--  <button id="btnId_repair" class="btn btn-danger" value="<%=repairs.get(i).getId_repair()%>"
                      class="btnClAdmin "><span
                      class="glyphicon glyphicon-remove"></span></button>--%>
        <%--</td>--%>
        <td><a href="/client/detailRepair.jsp?id_repair=<%=repairsNew.get(
i).getId_repair()%>" class="btn btn-primary">Detail</a>
        </td>
    </tr>
    <%
        }
    %>

</table>
        </div>
    </div>
</div>
</body>
</html>