<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<form class="px-3 h-100" action="/employee/add" method="post">

    <div class="row">
        <h1 class="col accordion-header" id="headingOne">
            Employee
        </h1>

        <button type="button" class="btn btn-primary col-2">Download Excel Template</button>
    </div>

            <div class="row">
                <div class="col md-3">
                    <label for="formFile" class="form-label">Upload File</label>
                    <div class="col-6 md-3 d-flex flex-row">
                        <input class="form-control w-50" style="margin-right: 20px" type="file" id="formFile">
                        <button type="button" class="btn btn-primary">Process</button>
                    </div>
                </div>

            </div>

    <div class="row mt-3">

        <div class="col-4 md-3 ">
            <label for="" class="mt-2">Employee Code<span class="text-danger">*</span></label>
            <input name="" id="" type="text" class="form-control mt-2" required>
        </div>

        <div class="col-4 md-3 ">
            <label for="" class="mt-2">Pan Number<span class="text-danger">*</span></label>
            <input name="employeePanNumber" id="" type="text" class="form-control mt-2" required>
        </div>

        <div class="col-4 md-3 ">
            <label for="" class="mt-2">Old Employee Code</label>
            <input name="employeeOldEmployeeCode" id="" type="text" class="form-control mt-2">
        </div>

    </div>

    <div class="row mt-3">

        <div class="col-4 md-3 ">
            <label for="" class="mt-2">Date of Appointment<span
                    class="text-danger">*</span></label>
            <input name="employeeDateOfAppointment" id="" type="date" class="form-control mt-2"
                   placeholder="Enter a number" required>
        </div>

        <div class="col-4 md-3 ">
            <label for="" class="mt-2">Bio Metric Id</label>
            <input name="employeeBioMetricId" id="" type="number" class="form-control mt-2">
        </div>

        <div class="col-4 md-3">
            <label for="field10" class="mt-2 md-3">Saluation<span
                    class="text-danger">*</span></label>

            <select name="employeeSalution" class="form-select" id="field10" aria-label="Default select example"
                    required>
                <option selected>--Select Type--</option>
                <option value="Mr">Mr.</option>
                <option value="Mrs">Mrs.</option>
                <option value="Miss">Miss</option>
            </select>
        </div>

    </div>

    <div class="row mt-3">

        <div class="col-4 md-3 ">
            <label for="" class="mt-2">Department<span class="text-danger">*</span></label>
            <input name="employeeDepartment" id="" type="text" class="form-control mt-2" required>
        </div>

        <div class="col-4 md-3 ">
            <label for="" class="mt-2">First Name<span class="text-danger">*</span></label>
            <input name="employeeFirstName" id="" type="text" class="form-control mt-2" required>
        </div>

        <div class="col-4 md-3 ">
            <label for="" class="mt-2">Middle Name</label>
            <input name="employeeMiddleName" id="" type="text" class="form-control mt-2">
        </div>

    </div>

    <div class="row mt-3">

        <div class="col-4 md-3 ">
            <label for="" class="mt-2">Last Name</label>
            <input name="employeeLastName" id="" type="text" class="form-control mt-2">
        </div>

        <div class="col-4 md-3">
            <label for="field10" class="mt-2 md-3">Unit</label>

            <select name="employeeUnit" class="form-select" id="" aria-label="Default select example">
                <option selected>--Select Type--</option>
                <option value="Mr">Mr.</option>
                <option value="Mrs">Mrs.</option>
                <option value="Miss">Miss</option>
            </select>
        </div>

        <!-- <div class="col-4 md-3">
            <label for="field10" class="mt-2 md-3">Designation<span
                    class="text-danger">*</span></label>

            <select name="employeeDesignation" class="form-select" id="" aria-label="Default select example"
                    >
                <option selected>--Select Type--</option>
                <option value="Mr">Mr.</option>
                <option value="Mrs">Mrs.</option>
                <option value="Miss">Miss</option>
            </select>
        </div> -->

    </div>

    <div class="row mt-3">

        <div class="col-4 md-3">
            <label for="field10" class="mt-2 md-3">Group<span
                    class="text-danger">*</span></label>

            <select class="form-select" id="" aria-label="Default select example"
                    required>
                <option selected>--Select Type--</option>
                <option value="Mr">Mr.</option>
                <option value="Mrs">Mrs.</option>
                <option value="Miss">Miss</option>
            </select>
        </div>

        <div class="col-4 md-3 ">
            <label class="form-check-label" for="exampleCheckbox">Is Gazetted</label>
            <input type="checkbox" class="form-check-input" id="">
        </div>

        <div class="col-4 md-3">
            <label for="field10" class="mt-2 md-3">Employee Eligible For<span
                    class="text-danger">*</span></label>

            <select class="form-select" id="" aria-label="Default select example"
                    required>
                <option selected>--Select Type--</option>
                <option value="Mr">Mr.</option>
                <option value="Mrs">Mrs.</option>
                <option value="Miss">Miss</option>
            </select>
        </div>

    </div>

    <div class="row mt-3">
        <div class="col-4 md-3 ">
            <label class="form-check-label" for="exampleCheckbox">Is Employee Cover Under
                Gratuity Act</label>
            <br>
            <input type="checkbox" class="form-check-input" id="exampleCheckbox">
        </div>
    </div>

    <div class="row mt-3">

        <div class="col-4 mt-3"></div>
        <div class="col-4 mt-3"></div>

        <div class="col-4" style="margin-top: 100px">
            <div class="row">
                <input class="btn btn-secondary col-md-4" type="reset" value="Reset" style="margin: 0 15px">
                <input class="btn col-md-6" type="submit" value="Save & Continue" style=" background-color: darkorange; color: white">
            </div>
        </div>
    </div>

</form>