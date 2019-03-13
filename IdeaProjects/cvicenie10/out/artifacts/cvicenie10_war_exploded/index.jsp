<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Datumy</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.16.0/jquery.validate.js"></script>
  <script src="js/mojeJS.js"></script>

</head>
<body>

<form class="form-horizontal" id="formular" >
  <fieldset>
    <legend>Legend</legend>
    <div class="form-group">
      <label for="nazov" class="col-lg-2 control-label">Nazov kinihy:</label>
      <div class="col-lg-6">
        <input type="text" class="form-control" id="nazov"  name="nazov" placeholder="Nazov kinihy">
      </div>
    </div>
    <div class="form-group">
      <label for="popis" class="col-lg-2 control-label">Popis kinihy:</label>
      <div class="col-lg-6">
        <input type="text" class="form-control" id="popis" name="popis" placeholder="Popis kinihy">
      </div>
    </div>
    <div class="form-group">
      <label for="cena" class="col-lg-2 control-label">Cena:</label>
      <div class="col-lg-6">
        <input type="number" class="form-control" id="cena"  name="cena" min="0" max="999"  step="0.01">
      </div>
    </div>
    <div class="form-group">
      <label class="col-lg-2 control-label">Datum</label>
      <div class="col-lg-6">
        <%--<input type="date" class="form-control" id="datum" placeholder="datum">--%>
        <div class="checkbox">
          <label>
            <input type="checkbox" id="pozicana" name="pozicana"> Pozicana
          </label>
        </div>
      </div>

    </div>

    <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button type="reset" class="btn btn-default">Cancel</button>
        <button type="submit" class="btn btn-primary" id="mojBtn">Submit</button>
      </div>
    </div>

  </fieldset>
</form>



<form class="form-horizontal" id="formular2" >
  <fieldset>
    <legend>Legend</legend>
    <div class="form-group">
      <label for="nazov" class="col-lg-2 control-label">ID kinihy:</label>
      <div class="col-lg-6">
        <input type="number" class="form-control" id="idcko"  name="idcko" placeholder="">
      </div>
    </div>
    <div class="form-group">
      <label for="nazov" class="col-lg-2 control-label">Nazov kinihy:</label>
      <div class="col-lg-6">
        <input type="text" class="form-control" id="nazov2"  name="nazov2" placeholder="Nazov kinihy">
      </div>
    </div>
    <div class="form-group">
      <label for="popis" class="col-lg-2 control-label">Popis kinihy:</label>
      <div class="col-lg-6">
        <input type="text" class="form-control" id="popis2" name="popis2" placeholder="Popis kinihy">
      </div>
    </div>
    <div class="form-group">
      <label for="cena" class="col-lg-2 control-label">Cena:</label>
      <div class="col-lg-6">
        <input type="number" class="form-control" id="cena2"  name="cena2" min="0" max="999"  step="0.01">
      </div>
    </div>
    <div class="form-group">
      <label for="krajna" class="col-lg-2 control-label">Krajina povodu</label>
      <div class="col-lg-10">
        <select class="form-control" id="krajna">
          <option>Slovensko</option>
          <option>Česko</option>
          <option>Maďarsko</option>
          <option>Poľsko</option>
          <option>Ukrajina</option>
          <option>Rakúsko</option>
        </select>
    </div>
    </div>
    <div class="form-group">
      <div class="col-lg-6">
        <div class="checkbox">
          <label>
            <input type="checkbox" id="pozicana2" name="pozicana2"> Pozicana
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
<script src="js/validate.js"></script>
</body>
</html>