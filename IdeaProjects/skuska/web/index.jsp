

<%@ page import="controllers.UserController" %>
<%@ page import="models.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ include file="header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <form class="form-horizontal" id="formular" action="/registruj" method="post">
    <fieldset>
      <legend>Legend</legend>
      <div class="form-group">
        <label for="email" class="col-lg-2 control-label">Email:</label>
        <div class="col-lg-6">
          <input type="email" class="form-control" id="email"  name="email" >
        </div>
      </div>
      <div class="form-group">
        <label for="celeMeno" class="col-lg-2 control-label">Cele meno:</label>
        <div class="col-lg-6">
          <input type="text" class="form-control" id="celeMeno"  name="celeMeno" >
        </div>
      </div>
      <div class="form-group">
        <label for="heslo1" class="col-lg-2 control-label">Heslo:</label>
        <div class="col-lg-6">
          <input type="password" class="form-control" id="heslo1" name="heslo1" >
        </div>
      </div>
      <div class="form-group">
        <label for="heslo2" class="col-lg-2 control-label">Heslo znovu:</label>
        <div class="col-lg-6">
          <input type="password" class="form-contro2" id="heslo2" name="heslo1" >
        </div>
      </div>
      <div class="form-group">
        <label for="krajna" class="col-lg-2 control-label">Krajina povodu</label>
        <div class="col-lg-10">
          <select class="form-control" id="krajna" name="krajna">
            <option value="Slovensko">Slovensko</option>
            <option value="Cesko">Česko</option>
            <option value="Madarsko">Maďarsko</option>
            <option value="Polsko">Poľsko</option>
            <option value="Ukrajina">Ukrajina</option>
            <option value="Rakusko">Rakúsko</option>
          </select>
        </div>
      </div>
      <div class="form-group">
        <div class="col-lg-6">
          <div class="checkbox">
            <label>
              <input type="checkbox" id="zamestnany" name="zamestnany"> Zamestnany
            </label>
          </div>
        </div>

      </div>

      <div class="form-group">
        <div class="col-lg-10 col-lg-offset-2">
          <button type="reset" class="btn btn-default">Cancel</button>
          <button type="submit" class="btn btn-primary" id="mojBtn2">Submit</button>
        </div>
      </div>

    </fieldset>
  </form>

<%
  UserController uc = new UserController();
  ArrayList<User> users = uc.selectVsetkych();

%>

<table>
  <thead>
  <tr>
    <td>Email</td>
    <td>Cele meno</td>
    <td>Krajina povodu</td>
    <td>Zamestnany</td>
  </tr>
  </thead>
  <tbody>
  <%
    for (int i = 0 ; i<users.size();i++){
        %>
  <tr>
    <td><%= users.get(i).getEmail()%></td>
    <td><%= users.get(i).getCeleMeno()%></td>
    <td><%= users.get(i).getKrajinaPovodu()%></td>
    <td><%
      if(users.get(i).getZamestnany()==1){
        out.print("ano");
      }else {
        out.print("nie");
      }
    %></td>
  </tr>
  <%
    }
  %>
  </tbody>
</table>

<%@ include file="footer.jsp" %>