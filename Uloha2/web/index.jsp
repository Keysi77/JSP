<%--
  Created by IntelliJ IDEA.
  User: Keys1
  Date: 21. 3. 2018
  Time: 23:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>index</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  </head>
  <body>

  <form name="myForm" class="form-inline" action="spracuj.jsp">
    <div class="form-group row">
      <label  class="col-sm-4 col-form-label">Rozmer X: </label>
      <div class="col-sm-8">
        <input type="text" name="rozmerX" class="form-control" placeholder="Rozmer X">
      </div>
    </div>
    <br><br>

    <div class="form-group row">
      <label class="col-sm-4 col-form-label">Rozmer Y: </label>
      <div class="col-sm-8">
        <input type="text" name="rozmerY" class="form-control" placeholder="Rozmer Y">
      </div>
    </div>
    <br><br>

    <div class="form-group row">
      <label class="col-sm-4 col-form-label" for="exampleFormControlSelect1">Výberte materiál: </label>

      <div class="col-sm-8">
        <select class="form-control" id="exampleFormControlSelect1" name="material">
          <option selected>Železo</option>
          <option>Drevo</option>
          <option>Hliník</option>
          <option>Liatina</option>
          <option>Meď</option>
        </select>
      </div>
    </div>
    <br><br>

    <div class="form-group row">
      <label class="col-sm-4" for="exampleFormControlTextarea1">Poznámka: </label>
      <div class="col-sm-8">
        <textarea class="form-control" id="exampleFormControlTextarea1" maxlength="500" name="poznamka" rows="3"></textarea>

      </div>
    </div>

  </form>



  <button type="submit" value="spracuj.jsp" onclick="validacia()" class="btn btn-primary">Submit</button>
  </form>


  <script type="text/javascript">
      function validacia(){
          var rozmerX=document.myForm.username.value;
          var rozmerY=document.myForm.email.value;

          var vMobile=document.myForm.mobile.value;
          /* var povoleneCisla = ["1", "2", "3", "4", "5", "6","7","8","9", "0"];*/
          /* podmienky pre prazdne stringy*/
          /*Array.isArray([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]);*/

          if (rozmerX==""){
              alert("Zadajte meno");
              document.myForm.username.focus();
              return false;
          }
          if (rozmerY==""){
              alert("Zadajte mail");
              document.myForm.username.focus();
              return false;
          }

          /* pre rozsahy */
          if (rozmerX<1 || rozmerX>1000){
              alert("Mimo rozsah");
              document.myForm.username.focus();
              return false;
          }
          if (rozmerY<1 || rozmerY>1000){
              alert("Mimo rozsah");
              document.myForm.username.focus();
              return false;
          }



      }

  </script>


  </body>
</html>
