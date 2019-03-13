<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 29.03.2018
  Time: 8:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.*"%>
<%@ page import="com.sun.org.apache.xpath.internal.operations.Bool" %>

<html>
  <head>

    <%@include file="head.jsp"%>
  </head>
  <body>
<%
  HashMap<String, Boolean> otazky = new HashMap<String, Boolean>();
  otazky.put("Nachádza sa Slovensko v EU?", true);
  otazky.put( "Je obloha ružová?", false);
  otazky.put("Baví ťa programovanie?", false);
  otazky.put("Máš rád knihy?", true);
  otazky.put("Si dobrý študent?", false);
%>

  <div class="container">
    <table class="table table-striped">
      <tr>
        <th>
          Otázka
        </th>
        <th>
          Odpoveď
        </th>
      </tr>
      <%
        Iterator iterator= otazky.keySet().iterator();
        while(iterator.hasNext()){
          String kluc = (String)iterator.next();
      %>
      <tr>
        <td>
          <%=kluc%>
        </td>
        <td>
          <%="<strong>"+otazky.get(kluc)+"</strong>"%>
        </td>
      </tr>
      <%
      }
      %>
    </table>
  </div>

<%
// ulozenie session do hashmapy
request.setCharacterEncoding("UTF-8");
String q = (String)request.getAttribute("question"); // (String) aby vedel ze je typu string
String  a = (String)(request.getParameter("answer"));
Boolean aB = Boolean.valueOf(a); // pretypovanie Stringu na Boolean
 // if (q== null || aB==null && !q.isEmpty()){
 //     response.sendRedirect("zadaj.jsp");
 // }

  HashMap<String, Boolean>  quiz = null;
  quiz = (HashMap<String, Boolean>) session.getAttribute("quizQuestions");

  if (quiz != null){
    quiz.put(q,aB);
  }else{
      quiz = new HashMap<>();
      quiz.put(q,aB);
      session.setAttribute("quizQuestions", quiz);
  }
%>
<%
  HashMap<String, Boolean> quiz2 = (HashMap<String, Boolean>) session.getAttribute("quizQuestions");
%>

<div class="container">
  <table class="table table-striped">
    <tr>
      <th>
        Otázka
      </th>
      <th>
        Odpoveď
      </th>
    </tr>
    <%
      Iterator iterator2= quiz2.keySet().iterator();
      while(iterator2.hasNext()){
        String kluc2 = (String)iterator2.next();
    %>
    <tr>
      <td>
        <%=kluc2%>
      </td>
      <td>
        <%="<strong>"+quiz2.get(kluc2)+"</strong>"%>
      </td>
    </tr>
    <%
      }
    %>
  </table>
</div>


  </body>
</html>
