<%--
  Created by IntelliJ IDEA.
  User: Keys1
  Date: 16. 5. 2018
  Time: 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adopcia</title>
    <%@include file="parts/head.jsp"%>

</head>
<body>
<!--
<div class="slideshow-container">

    <div class="mySlides fade">
        <img class="img-nav" src="obrazky/img1.jpg" >
    </div>

    <div class="mySlides fade">
        <img class="img-nav" src="obrazky/img2.jpg" >
    </div>

    <div class="mySlides fade">
        <img class="img-nav" src="obrazky/img3.jpg" >
    </div>

    <div class="mySlides fade">
        <img class="img-nav" src="obrazky/img4.jpg" >
    </div>

    <div class="mySlides fade">
        <img class="img-nav" src="obrazky/img5.jpg" >
    </div>

    <div class="mySlides fade">
        <img class="img-nav" src="obrazky/img6.jpg" >
    </div>



</div>
<br>

<div style="text-align:center">
    <span class="dot"></span>
    <span class="dot"></span>
    <span class="dot"></span>
    <span class="dot"></span>
    <span class="dot"></span>
    <span class="dot"></span>
</div>

-->

<div class="w3-content w3-display-container">
    <img class="mySlides" src="obrazky/img1.jpg" style="width:100%">
    <img class="mySlides" src="obrazky/img2.jpg" style="width:100%">
    <img class="mySlides" src="obrazky/img3.jpg" style="width:100%">
    <img class="mySlides" src="obrazky/img4.jpg" style="width:100%">

    <button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
    <button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">&#10095;</button>
</div>
<script>
    var slideIndex = 1;
    showDivs(slideIndex);

    function plusDivs(n) {
        showDivs(slideIndex += n);
    }

    function showDivs(n) {
        var i;
        var x = document.getElementsByClassName("mySlides");
        if (n > x.length) {slideIndex = 1}
        if (n < 1) {slideIndex = x.length}
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        x[slideIndex-1].style.display = "block";
    }
</script>


<div class="container">
<p class="center"> <i class="fa fa-quote-left" style="font-size:30px;color:red"></i> Dokonalý človek neznamená nič, kým nerobí dobré skutky, kým
    neutešuje smutných ľudí a zvieratá. <i class="fa fa-quote-right" style="font-size:30px;color:red"></i>
</p>
<div class="coara"></div>
<h1>K adopcií su k dispozicií tieto psy a mačky: </h1>
</div>
<%
    String totalPrice = null;
    Connect connect = new Connect();

    try {
        // JDBC connector
        Class.forName(connect.getJdbc());
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    // SUMA stlpca suma pompocou SUM()
    String strQuery = "SELECT SUM(suma) FROM product";

    try
            (
                    // napojenie na databazu skuskadb
                    Connection con = DriverManager.getConnection(connect.getDbURL()+connect.getDbname(), connect.getUser(), connect.getPassword());
                    Statement st = con.createStatement();
            ){
        ResultSet resultSet= st.executeQuery(strQuery);
        while (resultSet.next()) {
            totalPrice = resultSet.getString(1);
        }
%>


    <%
        String sql ="SELECT * FROM zvierata";
        resultSet = st.executeQuery(sql);
        while(resultSet.next()){

            // typ, vaha, narodenie, farba, popis
    %>



<div class="container">
    <div class="row">
        <div class="p1">

            <%
                Object src = "obrazky/dogs/"+resultSet.getString("typ")+".jpg";
                out.println("<img src=" +src+'>') ;
            %>



            <h1> <i class="fa fa-paw"></i> <%=resultSet.getString("typ") %> </h1>
            <p><strong>Váha:</strong> <%=resultSet.getInt("vaha") %> Kg</p>
            <p><strong>Narodenie:</strong>  <%=resultSet.getString("narodenie") %> </p>
            <p><strong>Farba:</strong>  <%=resultSet.getString("farba") %> </p>
            <p><strong>Popis:</strong>  <%=resultSet.getString("popis") %> </p>

            <a href="adopciaForm.jsp?id=<%=resultSet.getInt("id")%>" class="btn btn-success animate">Adoptovať</a>

        </div>
            <%
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
    </div>
</div>

<%@include file="parts/footer.jsp"%>
</body>
</html>
