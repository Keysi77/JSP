<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 07.03.2017
  Time: 8:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List, java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<html>
  <head>
    <title>Úžasný projektík</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

      <!-- Latest compiled and minified CSS -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

      <!-- Optional theme -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

      <!-- Latest compiled and minified JavaScript -->
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

  </head>
  <body>


    <% // dvojrozmerne pole
      out.print("<table class=\"table\">");
      int[][] double_array = new int[3] [3];
      for (int i=0; i<double_array.length; i++){
        out.print("<tr>");
        for (int j=0; j<double_array[i].length; j++){

          double_array[i][j] = i+1;
          if (i ==  j){
            double_array[i][j] = 0;
            }
            else{
            double_array[i][j]=1;
          }
          out.print("<th>" +double_array[i][j]+ "</th>");

          out.println(double_array[i][j]  );
        }
        out.print("</tr>");
        }
      out.print("</table>");
    %>

      <% // arrayList

    ArrayList zoznam = new ArrayList();
        zoznam.add(20);
        zoznam.add(21);
        zoznam.add(22);
        zoznam.add("lorem ipsum");
        zoznam.add(23);

        out.println("<br>"+zoznam.get(1));
        out.println("<br>"+zoznam.indexOf("lorem ipsum"));
        out.println("<p>"+zoznam);
        zoznam.remove(3);
        out.println("<br>"+zoznam);


%>

    <%
      ArrayList<String> stringList = new ArrayList<String>();
      stringList.add("Lorem ipsum dolor sit amet");
      stringList.add("consectetur adipiscing elit");
      stringList.add("sed do eiusmod tempor incididunt ");
      stringList.add("ut labore et dolore magna aliqua");
      stringList.add("Ut enim ad minim veniam");

      out.println("<br>" +stringList);
    %>

  <% // Trieda Obdobie

    // na moodly

  %>

  <%  //Hashmapy
    // DU spravit vyhladavanie s presnou hodnotou pomocou kluca
    // s viacerymi vyrazmi ako arrayList
    HashMap<String, String> string_hash = new HashMap<>();
    string_hash.put("auto", "car");
    string_hash.put("stolicka", "chair");
    string_hash.put("dom", "house");
    string_hash.put("drž hubu", "shut up");


    Iterator iterator = string_hash.keySet().iterator();
    while(iterator.hasNext()){
      String kluc = (String)iterator.next();
      out.println("<p>Slovensky: "+kluc+ " ; Anglicky: " +string_hash.get(kluc)+"</p>");
    }
  %>

  <% // kluc bude typu ArrayList String
    HashMap<String, ArrayList<String>> string_hash2 = new HashMap<>();

  %>


  </body>
</html>
