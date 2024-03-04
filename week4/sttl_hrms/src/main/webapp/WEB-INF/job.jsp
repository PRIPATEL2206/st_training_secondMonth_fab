<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Information Form</title>

    <link rel="stylesheet" type="text/css" href="CSS/form_page.css">
    <style>

    </style>
  </head>

  <body>

    <div class="form_heading ml-3">
      <h1>Job</h1>
    </div>
    <form action="upload.php" method="post" enctype="multipart/form-data">

      <div class="row">
        <div class="col">
          <label for="panNumber">Employeement Type <span class="star">*</span>:</label>
          <input type="text" name="panNumber" id="panNumber">
        </div>
        <div class="col">
          <label for="panNumber">Employeement Catagory<span class="star">*</span>:</label>
          <input type="text" name="panNumber" id="panNumber">
        </div>

        <div class="col">

          <label for="posting">Employee Status<span class="star">*</span>:</label>
          <select name="salutation" id="salutation">
            <option value="select">--Select type--</option>
            <option value="mr">Mr.</option>
            <option value="ms">Ms.</option>
            <option value="mrs">Mrs.</option>
          </select>
        </div>
      </div>
      <div class="row">
        <div class="col">
          <label for="panNumber">Employeement Type <span class="star">*</span>:</label>
          <input type="text" name="panNumber" id="panNumber">
        </div>
        <div class="col">

          <label for="status">Employee Status<span class="star">*</span>:</label>
          <select name="status" id="status">
            <option value="select">--Select type--</option>
            <option value="em">Employee</option>
            <option value="dev">developer</option>
            <option value="sdev">sinior developer</option>
          </select>
        </div>
        <div class="col">

          <label for="duandRes">Duty and Responsibilyty:</label>
          <textarea name="duandRes" id="duandRes" cols="30" rows="6" class></textarea>
        </div>
      </div>

      <div class="row">

        <div class="col">
          <label for="firstName">Insurence Start Group:</label>
          <input type="text" name="firstName" id="firstName">
        </div>
        <div class="col">

          <label for="insuForm">Insurence with effective forms</label>
          <input type="date" name="insuForm" id="insuForm">
        </div>
        <div class="col">
        </div>
      </div>

      <hr>

      <div class="form_heading ml-3">
        <h1>Initial Joining Details</h1>
      </div>
      <div class="row">

        <div class="col">

          <label for="posting">Place of posting :</label>
          <select name="posting" id="posting">
            <option value="select">--Select type--</option>
            <option value="mr">Silver touch</option>
            <option value="ms">tatva soft</option>
            <option value="mrs">google</option>
          </select>
        </div>
        <div class="col">

          <label for="branch">Barnch Name :</label>
          <select name="branch" id="branch">
            <option value="select">--Select type--</option>
            <option value="mr">india</option>
            <option value="ms">amerika</option>
            <option value="mrs">canada</option>
          </select>
        </div>
        <div class="col">

          <label for="duandRes">Work Location :</label>
          <textarea name="duandRes" id="duandRes" cols="30" rows="6" class></textarea>
        </div>
      </div>
      <div class="row">
        <div class="col">
          <label for="lastName">Last Name:</label>
          <input type="text" name="lastName" id="lastName">
        </div>
        <div class="col">

          <label for="unit">Unit:</label>
          <select name="unit" id="unit">
            <option value="select">--Select type--</option>
            <option value="unit1">Unit 1</option>
            <option value="unit2">Unit 2</option>
            <!-- Add more units as needed -->
          </select>
        </div>
        <div class="col">
          <label for="designation">Designation<span class="star">*</span>:</label>
          <select name="designation" id="designation">
            <option value="select">--Select type--</option>
            <option value="manager">Manager</option>
            <option value="developer">Developer</option>
            <!-- Add more designations as needed -->
          </select>
        </div>
      </div>
      <div class="row">
        <div class="col">
          <label for="group">Group<span class="star">*</span>:</label>
          <select name="group" id="group">
            <option value="select">--Select type--</option>
            <option value="groupA">Group A</option>
            <option value="groupB">Group B</option>
            <!-- Add more groups as needed -->
          </select>
        </div>
        <div class="col">
          <label for="isGazzetted">Is Gazzetted?</label>
          <input type="checkbox" name="isGazzetted" id="isGazzetted">
        </div>
        <div class="col">
          <label for="eligibleFor">Employee Eligible For<span class="star">*</span>:</label>
          <select name="eligibleFor" id="eligibleFor">
            <option value="select">--Select type--</option>
            <option value="insurance">Insurance</option>
            <option value="pension">Pension</option>
            <!-- Add more options as needed -->
          </select>
        </div>
      </div>
      <div class="col">
        <label for="isGratuityAct">Is Employee Under Gratuity Act?</label>
        <input type="checkbox" name="isGratuityAct" id="isGratuityAct">
      </div>
      <div class="bottom">
        <a href="/reset" class="reset" type="Reset"><span>Reset</span></a>
        <a href="/save" class="save" type="Reset"><span>Save & Continue</span></a>
      </div>
    </form>

  </body>

  </html>