<%@ page import="com.carservice.controller.dao.RepairImplement" %>
<%@ page import="com.carservice.model.Repair" %>
<%@ page import="java.util.ArrayList" %><%--
  User: Kanderka
  *****************************
  SHOW ONLY FOR LOGIN EMPLOYEE
  *****************************
--%>
<%@include file="includes/header.jsp"%>
<title>Car repairs</title>
<%@include file="includes/navbar.jsp"%>

<%
    if (session.getAttribute("empl_email") == null){
        response.sendRedirect("loginEmpl.jsp");
        return;
    }
%>
<%
    RepairImplement repairDao = new RepairImplement();
    ArrayList<Repair> repairs = new ArrayList<>();
    repairs = repairDao.getAllRepairs();
%>
<div class="container">

    <div class="row">
        <h1>Car repairs</h1>

        <div class="col-lg-12">
            <table class=" table table-bordered">
                <thead>
                <tr>
                    <td>id_repair</td>
                    <td>client_email</td>
                    <td>car_brand</td>
                    <td>car_model</td>
                    <td>vin_number</td>
                    <td>Technicka zavada</td>
                    <td>status_repair</td>
                    <td>Edit</td>

                </tr>
                </thead>


                <%
                    for (int i = 0; i<repairs.size(); i++) {
                %>
                <tr>
                    <td><%=repairs.get(i).getId_repair()%></td>
                    <td><%=repairs.get(i).getClient_email()%></td>
                    <td><%=repairs.get(i).getCar_brand()%></td>
                    <td><%=repairs.get(i).getCar_model()%></td>
                    <td><%=repairs.get(i).getVin_number()%></td>
                    <td><%=repairs.get(i).getWhat_repair()%></td>
                    <td><%=repairs.get(i).getStatus_repair()%></td>

                    <td class="center-block"><a href="/employee/manageRepair.jsp?id_repair=<%=repairs.get(
i).getId_repair()%>" class="btn btn-warning">Edit</a>

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
