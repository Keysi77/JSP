<%@ page import="com.carservice.model.Repair" %>
<%@ page import="com.carservice.controller.dao.RepairImplement" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../includes/header.jsp" %>
<title>Update my repair</title>
<%@include file="includes/navbar.jsp" %>
<%
    if (session.getAttribute("client_email") == null) {
        response.sendRedirect("myRepairs.jsp");
        return;
    }
%>
</head>
<body>
<%
    int id_repair = Integer.parseInt(request.getParameter("id_repair"));
    Repair repair = new Repair();
    RepairImplement repairDao = new RepairImplement();
    repair = repairDao.getRepairWhereId(id_repair);
%>
<div class="container">
    <div class="row">
        <div class="col-lg-6">
        <h1>Edit my Car Repair</h1>

            <h2>My car: <%=repair.getMotor_vehicle_licence_plate()%>
            </h2>
            <%
                if (repair.getStatus_repair() > 1) {
                    out.println("<div class=\"alert alert-warning \">Bohuzial, ak chces urobit zmenu v objednavke, musis nas kontaktovat na tel. cisle 0900 000 007</div>");
                } else {


            %>
            <form action='/updateRepair' method='post'>
                <div class="form-group">
                    <input type='hidden' name='id_repair' value='<%=repair.getId_repair() %>'/>
                </div>

                <div class="form-group">
                    <%--client_email:--%>
                    <input type='hidden' class="form-control" readonly name='client_email'
                           value='<%=repair.getClient_email()%> '/>
                </div>
                <div class="form-group">
                    car_brand:
                    <input type='text' class="form-control" name='car_brand' value='<%=repair.getCar_brand()%> '/>
                </div>
                <div class="form-group">
                    car_model
                    <input type='text' class="form-control" name='car_model' value='<%=repair.getCar_model()%>'/>
                </div>
                <div class="form-group">
                    motor_vehicle_licence_plate:
                    <input type='text' class="form-control" name='motor_vehicle_licence_plate'
                           value='<%=repair.getMotor_vehicle_licence_plate()%>'/>
                </div>
                <div class="form-group">
                    vin_number:
                    <input type='text' class="form-control" name='vin_number' value='<%=repair.getVin_number()%>'/>
                </div>
                <div class="form-group">
                    what_repair:
                    <input type='text' class="form-control" name='what_repair' value='<%=repair.getWhat_repair()%>'/>
                </div>
                <div class="form-group">
                    Status:
                    <input type='hidden' class="form-control" name='status_repair'
                           value='<%=repair.getStatus_repair()%>'/>
                </div>
                <%--<input type='submit' value='Edit & Save ' />--%>
                <button type="submit" class="btn btn-primary">Save and Edit</button>
               <%-- <div class="alert alert-success"><%=repair.getStatus_repair()%>
                </div>--%>
            </form>
            <%}%>
        </div>
        <div class="col-lg-6">
            <h2>Vasa oprava je momentalne v stave:</h2>
            <%--<%
                switch (repair.getStatus_repair()) {
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
            %>--%>

        </div>
    </div>
</div>
</body>
</html>
