<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

  <link rel="stylesheet" type="text/css" href="CSS/form_page.css">


  <div class="form_heading ml-3">
    <h1>Family</h1>
  </div>
  <form action="upload.php" method="post" enctype="multipart/form-data">

    <div class="row">
      <div class="col">
        <label for="fName">Family Name <span class="star">*</span>:</label>
        <input type="text" name="fName" id="fName">
      </div>
      <div class="col">
        <label for="Mname">Middel Name:</label>
        <input type="text" name="Mname" id="Mname">
      </div>

      <div class="col">

        <label for="lname">Last Name<span class="star">*</span>:</label>
        <input type="text" name="lname" id="lname">

      </div>
    </div>
    <div class="row">

      <div class="col">
        <label for="relation">Relation<span class="star">*</span>:</label>
        <select name="relation" id="relation">
          <option value="select">--Select Relation--</option>
          <option value="em">Mother</option>
          <option value="dev">Father</option>
          <option value="sdev">Sister</option>
        </select>
      </div>
      <div class="col">
        <label for="dob">Date Of Birth<span class="star">*</span>:</label>
        <input type="date" name="dob" id="dob">
      </div>
      <div class="col">
        <label for="Gender">Relation<span class="star">*</span>:</label>
        <select name="Gender" id="Gender">
          <option value="select">--Select Relation--</option>
          <option value="em">male</option>
          <option value="dev">female</option>
        </select>
      </div>
    </div>

    <div class="row">

      <div class="col">
        <div class="chachBoxWithLable">
          <input type="checkbox" name="isGratuityAct" id="isGratuityAct">
          <label for="isGratuityAct">Is Employee Under Gratuity Act?</label>
        </div>
      </div>
      <div class="col">

        <label for="status">Matual Status :</label>
        <select name="status" id="status">
          <option value="select">--Select type--</option>
          <option value="mr">merid</option>
          <option value="ms">single</option>
        </select>
      </div>
      <div class="col">
        <label for="occupation">Ocupation:</label>
        <input type="text" name="occupation" id="occupation">
      </div>
    </div>
    <div class="row">

      <div class="col">
        <div class="chachBoxWithLable">
          <input type="checkbox" name="isdepartment" id="isdepartment">
          <label for="isdepartment">Is Department?</label>
        </div>
      </div>
      <div class="col">
        <label for="Contact">Contact Details:</label>
        <input type="text" name="Contact" id="Contact">
      </div>
      <div class="col">
        <label for="status">Nationality :</label>
        <select name="status" id="status">
          <option value="select">--Select type--</option>
          <option value="mr">Indian</option>
          <option value="ms">American</option>
          <option value="ms">canadian</option>
        </select>
      </div>

    </div>
    <div class="row">

      <div class="col">
        <div class="chachBoxWithLable">
          <input type="checkbox" name="isresideWith" id="isresideWith">
          <label for="isresideWith">Is Reside With?</label>
        </div>
      </div>
      <div class="col">
        <div class="chachBoxWithLable">
          <input type="checkbox" name="isEmergency" id="isEmergency">
          <label for="isEmergency">Can be Contacted in Emergency?</label>
        </div>
      </div>
      <div class="col">
        <div class="chachBoxWithLable">
          <input type="checkbox" name="isdisabled" id="isdisabled">
          <label for="isdisabled">Is Physically Disabled?</label>
        </div>
      </div>

    </div>


    <div class="bottom">
      <a href="/reset" class="reset" type="Reset"><span>Reset</span></a>
      <a href="/save" class="save" type="Reset"><span>Save & Continue</span></a>
    </div>
  </form>