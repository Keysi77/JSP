<%@ page import="com.kmikt.Admin" %><%--
  Created by IntelliJ IDEA.
  User: Keys1
  Date: 16. 5. 2018
  Time: 20:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="parts/head.jsp"%>
</head>
<body>

<div class="container primary">

<form>
    <div class="form-group">
        <label for="emailAdmin">Email address</label>
        <input type="text" class="form-control" id="emailAdmin" name="emailAdmin" aria-describedby="emailHelp" placeholder="Enter email">

    </div>
    <div class="form-group">
        <label for="hesloAdmin">Password</label>
        <input type="text" class="hesloAdmin" name="hesloAdmin" id="hesloAdmin" placeholder="Password">
    </div>

    <button type="submit" class="btn btn-primary">Prihlásiť</button>


</form>

        <%
            String user=request.getParameter("emailAdmin");
            String pass=request.getParameter("hesloAdmin");
            String skuskaMail = "Michal77";
            String skuskaHeslo = "heslo12345";
            Admin admin = new Admin();

            String meno= admin.getAdminUser();
            String heslo= admin.getAdminPassword();

        // Connect connect = new Connect();


            if((skuskaMail.equals(user)) && (skuskaHeslo.equals(pass)))
            {
                out.println("Úspešne prihlásený ako admin");
             %>
            <div class="container primary ciara">
                <h1>Admin: PRODUKT</h1>

                <form action="/sent" method="post" id="produkt">
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="zadajte meno" >
                    </div>
                    <div class="form-group">
                        <label for="amount">Amount</label>
                        <input type="text" class="form-control" id="amount" name="amount" placeholder="zadajte množstvo">
                    </div>
                    <div class="form-group">
                        <label for="price">Price</label>
                        <input type="text" class="form-control" id="price" name="price" placeholder="zadajte cenu">
                    </div>
                    <div class="form-group">
                        <label for="popisProdukt">Price</label>
                        <input type="text" class="form-control" id="popisProdukt" name="popisProdukt" placeholder="zadajte popis produktu">
                    </div>

                    <button type="submit" class="btn btn-success float-left">Odoslať</button>
                </form>
            </div>

            <div class="container primary">
                <h1>Admin: ZVIERATA</h1>
                <form action="/sentZviera" method="post" id="zvierata">
                    <div class="form-group">
                        <label for="typ">Typ</label>
                        <input type="text" class="form-control" id="typ" name="typ" placeholder="zadajte typ" >
                    </div>
                    <div class="form-group">
                        <label for="vaha">Vaha</label>
                        <input type="text" class="form-control" id="vaha" name="vaha" placeholder="zadajte vaha">
                    </div>
                    <div class="form-group">
                        <label for="narodenie">Narodenie</label>
                        <input type="text" class="form-control" id="narodenie" name="narodenie" placeholder="zadajte narodenie">
                    </div>
                    <div class="form-group">
                        <label for="farba">Farba</label>
                        <input type="text" class="form-control" id="farba" name="farba" placeholder="zadajte farbu">
                    </div>
                    <div class="form-group">
                        <label for="popis">Popis</label>
                        <input type="text" class="form-control" id="popis" name="popis" placeholder="zadajte popis">
                    </div>

                    <button type="submit" class="btn btn-success float-left">Odoslať</button>
                </form>

                <a class="btn btn-info float-left" href="sent.jsp">Zobraziť produkty</a>
            </div>


            <%

            }
            else{
                out.println("Zlé prihlasovacie údaje");
            }

%>



</body>
</html>
