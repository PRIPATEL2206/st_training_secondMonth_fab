<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
    .modal{
        margin-top: 100px !important;
    }
</style>
<form class="px-3 h-100">

    <div class="row">
        <h1 class="col accordion-header" id="headingOne">
            Contact
        </h1>
    </div>


    <div class="row mt-3">

        <div class="col-3 md-2 ">
            <label for="" class="mt-2">Work Phone</label>
            <input name="" id="" type="text" class="form-control mt-2">
        </div>
        <div class="col-1 md-1 ">
            <label for="" class="mt-2">Extension</label>
            <input name="" id="" type="text" class="form-control mt-2">
        </div>

        <div class="col-4 md-3 ">
            <label for="" class="mt-2">Marriage Status</label>
            <input name="" id="" type="text" class="form-control mt-2">
        </div>

        <div class="col-4 md-3 ">
            <label for="" class="mt-2">Home Phone</label>
            <input name="" id="" type="text" class="form-control mt-2">
        </div>



    </div>

    <div class="row mt-3">

        <div class="col-4 md-3 ">
            <label for="" class="mt-2">Home Phone</label>
            <input name="" id="" type="text" class="form-control mt-2">
        </div>

        <div class="col-4 md-3 ">
            <label for="" class="mt-2">Corporate Email<span class="text-danger">*</span></label>
            <input name="" id="" type="email" class="form-control mt-2" required>
        </div>

        <div class="col-4 md-3 ">
            <label for="" class="mt-2">Personal Email</label>
            <input name="" id="" type="email" class="form-control mt-2">
        </div>

    </div>

    <div class="row mt-3">

        <div class="col-4 md-3 ">
            <label for="" class="mt-2">Secondary Email</label>
            <input name="" id="" type="email" class="form-control mt-2">
        </div>
    </div>

    <hr>

    <div class="row mt-3">

        <div class="col-4 md-3 ">
            <label for="" class="mt-2 md-3">Address</label>

            <div class="card" style="width: 18rem;">
                <div class="card-body ">
                    <p class="card-title" style="padding-left: 20px;">Add new record for address</p>

                    <br>

                    <img src="plus.svg" type="button" style="height: 10vh; width: auto; margin-left: 70px;" class="card-img-top justify-content-center"
                         data-bs-toggle="modal" data-bs-target="#exampleModal">

                    <div class="modal  mt-5" id="exampleModal" tabindex="-1"
                         aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Add new
                                        Address</h1>
                                    <hr>
                                    <button type="button" class="btn-close"
                                            data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">

                                    <div class="row">
                                        <div class="col-6 md-3">
                                            <label for="field10" class="mt-2 md-3">Address
                                                Type<span class="text-danger">*</span></label>

                                            <select class="form-select" id=""
                                                    aria-label="Default select example">
                                                <option selected>--Select Type--</option>
                                                <option value="1">One</option>
                                                <option value="2">Two</option>
                                                <option value="3">Three</option>
                                            </select>
                                        </div>

                                        <div class="col-6 md-3 ">
                                            <label for="" class="mt-2">Address<span
                                                    class="text-danger">*</span></label>
                                            <input name="" id="" type="text"
                                                   class="form-control mt-2" required>
                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-6 md-3">
                                            <label for="field10" class="mt-2 md-3">Country<span
                                                    class="text-danger">*</span></label>

                                            <select class="form-select" id=""
                                                    aria-label="Default select example">
                                                <option selected>--Select Type--</option>
                                                <option value="1">One</option>
                                                <option value="2">Two</option>
                                                <option value="3">Three</option>
                                            </select>
                                        </div>

                                        <div class="col-6 md-3">
                                            <label for="field10" class="mt-2 md-3">State<span
                                                    class="text-danger">*</span></label>

                                            <select class="form-select" id=""
                                                    aria-label="Default select example">
                                                <option selected>--Select Type--</option>
                                                <option value="1">One</option>
                                                <option value="2">Two</option>
                                                <option value="3">Three</option>
                                            </select>
                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-6 md-3">
                                            <label for="field10" class="mt-2 md-3">District<span
                                                    class="text-danger">*</span></label>

                                            <select class="form-select" id=""
                                                    aria-label="Default select example">
                                                <option selected>--Select Type--</option>
                                                <option value="1">One</option>
                                                <option value="2">Two</option>
                                                <option value="3">Three</option>
                                            </select>
                                        </div>

                                        <div class="col-6 md-3">
                                            <label for="field10" class="mt-2 md-3">City<span
                                                    class="text-danger">*</span></label>

                                            <select class="form-select" id="field10"
                                                    aria-label="Default select example">
                                                <option selected>--Select Type--</option>
                                                <option value="1">One</option>
                                                <option value="2">Two</option>
                                                <option value="3">Three</option>
                                            </select>
                                        </div>

                                    </div>

                                    <div class="row">

                                        <div class="col-6 mt-3 md-3">
                                            <label for="pin" class="mt-2 md-3">Pin
                                                <Code></Code><span
                                                        class="text-danger">*</span></label>
                                            <input type="text" id="pin" pattern="[1-9][0-9]{5}"
                                                   title="Please enter a valid Indian PIN code">
                                        </div>

                                        <div class="col-6 mt-3 md-3">
                                            <label class="form-check-label "
                                                   for="exampleCheckbox">All Address are
                                                Same</label>
                                            <input type="checkbox" class="form-check-input"
                                                   id="exampleCheckbox">
                                        </div>

                                        <div class="row mt-3">

                                            <div class="col-1 md-3">
                                                <input type="radio" id="owner" name="occupancy"
                                                       value="owner">
                                            </div>
                                            <div class="col-2">
                                                <label for="owner">Owner</label><br>
                                            </div>
                                            <div class="col-1 md-3">
                                                <input type="radio" id="tenant" name="occupancy"
                                                       value="tenant">
                                            </div>
                                            <div class="col-2">
                                                <label for="tenant">Tenant</label><br>
                                            </div>
                                        </div>

                                    </div>

                                </div>


                                <div class="modal-footer d-flex">
                                    <button type="button" class="btn btn-primary">Add</button>
                                    <button type="button" class="btn btn-danger"
                                            data-bs-dismiss="modal">Cancel</button>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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