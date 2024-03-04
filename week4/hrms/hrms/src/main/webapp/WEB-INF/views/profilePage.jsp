<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/fastbootstrap@2.2.0/dist/css/fastbootstrap.min.css" rel="stylesheet"
        integrity="sha256-V6lu+OdYNKTKTsVFBuQsyIlDiRWiOmtC8VQ8Lzdm2i4=" crossorigin="anonymous">
    <style>
        .profileBody {
            background-color: #E6E7F4;
            border-radius: 2rem;

        }

        p {
            margin-bottom: 0px;
        }

        .color-blue {
            color: #488BF7;
        }

        .color-kesari {
            color: #D5B29F;
        }
    </style>
    <title>Profile</title>
</head>

<body>
    <div class="row">
        <jsp:include page="sidebar.jsp" />
        <div class="col w-100 p-4 profileBody">
            <div class="row">
                <div class="col">
                    <h3 class="color-blue">My Profile</h3>
                    <p>Dashboard > Employee Information > My Profile</p>
                </div>
                <div class="col-2 float-end ">
                    <button type="button" class="btn btn-warning p-2 text-white font-weight-bold">Edit employee</button>
                </div>
            </div>
            <hr>
            <div class="card p-4 rounded-4">
                <div class="row">
                    <div class="col-2 p-2">
                        <img src="icon/usericon.png" alt="">
                    </div>
                    <div class="col">
                        <div class="row">
                            <div class="col-5">
                                <h2 class="color-blue">${user.name} (STT/983502)</h2>
                                <div class="row">
                                    <div class="col">
                                        <h4>jr_java_Developer | </h4>
                                    </div>
                                    <div class="col-2">
                                        <span class="badge bg-danger px-4 py-2 center">java</span>
                                    </div>
                                    <div class="col">
                                        <img class="avatar" src="icon\linkedin.png" />
                                        <img class="avatar" src="icon\xIcon.png" />
                                        <img class="avatar" src="icon\facebook.jpg" />
                                    </div>
                                </div>

                            </div>
                            <div class="col"></div>
                            <div class="col-2">
                                <p style="display: flex;"><img class="avatar" src="icon/email.png" alt="">
                                    ${user.email}</p>
                                <p style="display: flex;"><img class="avatar" src="icon/phone.png" alt=""> 0454444444
                                </p>
                            </div>
                        </div>
                        <br>
                        <hr>
                        <br>
                        <div class="row">
                            <div class="col">
                                <div>
                                    <p style="margin-bottom: 0;">Reporing to</p>
                                    <h6>Shri Anshuman Sanghavi</h6>
                                </div>
                            </div>
                            <div class="col">
                                <div>
                                    <p style="margin-bottom: 0;">Bload Group</p>
                                    <h6>ARh Negative</h6>
                                </div>
                            </div>
                            <div class="col">
                                <div>
                                    <p style="margin-bottom: 0;">Location</p>
                                    <h6>Ahmedabad Head Office</h6>
                                </div>
                            </div>
                            <div class="col">
                                <div>
                                    <p style="margin-bottom: 0;">Appointment Date</p>
                                    <h6>01 jan, 2024</h6>
                                </div>
                            </div>
                            <div class="col">
                                <div>
                                    <p style="margin-bottom: 0;">Gender</p>
                                    <h6>Male</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <div class="card p-4 rounded-4">
                <div class="col">
                    <div class="row">
                        <div class="col">
                            <h3>Employee Information</h3>
                        </div>
                        <div class="col"></div>
                        <div class="col-1">
                            <h3>0</h3>
                        </div>
                    </div>
                    <hr>
                    <br>
                    <div class="col">
                        <div class="row">
                            <h4> Employee Details</h4>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col">
                                <p>PAN Number</p>
                                <b>AZZZR95118</b>
                            </div>
                            <div class="col">
                                <p>Salutaion</p>
                                <b>Shri</b>
                            </div>
                            <div class="col">
                                <p>First Name</p>
                                <b>Atharv</b>
                            </div>
                            <div class="col">
                                <p>Middel Name</p>
                                <b>-</b>
                            </div>
                            <div class="col">
                                <p>Last Name</p>
                                <b>-</b>
                            </div>

                        </div>
                        <br>
                        <div class="row">
                            <div class="col">
                                <p>Display Name</p>
                                <b>Atharv</b>
                            </div>
                            <div class="col">
                                <p>Old Employee Code</p>
                                <b>-</b>
                            </div>
                            <div class="col">
                                <p>Unit</p>
                                <b>-</b>
                            </div>
                            <div class="col">
                                <p>Designation</p>
                                <b>jr.java Developer</b>
                            </div>
                            <div class="col">
                                <p>Group</p>
                                <b>silver touch</b>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-2">
                                <p>is Gazetted</p>
                                <b>No</b>
                            </div>
                        </div>
                        <br>
                        <hr>
                        <br>
                        <div class="row">
                            <h4> Personal Details</h4>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col">
                                <p>Marriage Status</p>
                                <b>Unmarried</b>
                            </div>
                            <div class="col">
                                <p>Marriage Date</p>
                                <b>-</b>
                            </div>
                            <div class="col">
                                <p>Date of birth</p>
                                <b>01 jun,2000</b>
                            </div>
                            <div class="col">
                                <p>Birth Place</p>
                                <b>-</b>
                            </div>
                            <div class="col">
                                <p>Community Category</p>
                                <b>General</b>
                            </div>

                        </div>
                        <br>
                        <div class="row">
                            <div class="col">
                                <p>UID No.</p>
                                <b>-</b>
                            </div>
                            <div class="col">
                                <p>GPF A/C No.</p>
                                <b>34345041654</b>
                            </div>
                            <div class="col">
                                <p>Relligion</p>
                                <b>-</b>
                            </div>
                            <div class="col">
                                <p>Cast</p>
                                <b>-</b>
                            </div>
                            <div class="col">
                                <p>Communty Category Refernce</p>
                                <b>-</b>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col">
                                <p>Nationality</p>
                                <b>-</b>
                            </div>
                            <div class="col">
                                <p>Postal Life Insurance Policy No.</p>
                                <b>-</b>
                            </div>
                            <div class="col">
                                <p>Hobbies</p>
                                <b>-</b>
                            </div>
                            <div class="col">
                                <p>Bank Name</p>
                                <b>SBI</b>
                            </div>
                            <div class="col">
                                <p>Bank Branch Name</p>
                                <b>ahmedabad</b>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col">
                                <p>Bank A/C Number</p>
                                <b>0005023401122120</b>
                            </div>
                            <div class="col">
                                <p>IFSC Code</p>
                                <b>SBINOOO5113</b>
                            </div>
                            <div class="col-2">
                                <p>BSR Code</p>
                                <b>-</b>
                            </div>
                            <div class="col">
                                <p>Passport No</p>
                                <b>-</b>
                            </div>
                            <div class="col">
                                <p>Date Of Expiry</p>
                                <b>-</b>
                            </div>
                        </div>
                        <br>
                        <hr>
                        <br>
                        <div class="row">
                            <h4> Contact Details</h4>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col">
                                <p>Work Phone</p>
                                <b>09496654000</b>
                            </div>
                            <div class="col">
                                <p>Extension</p>
                                <b>91</b>
                            </div>
                            <div class="col">
                                <p>Work Mobile</p>
                                <b>04544444444</b>
                            </div>
                            <div class="col">
                                <p>Home Phone</p>
                                <b>0230234889</b>
                            </div>
                            <div class="col">
                                <p>Home Mobile</p>
                                <b>7898743204</b>
                            </div>

                        </div>
                        <br>
                        <div class="row">
                            <div class="col-2">
                                <p>Corporate Email</p>
                                <b>atharva123@gmail.com</b>
                            </div>
                            <div class="col-2">
                                <p>Personal Email</p>
                                <b>arthav10@gmail.com</b>
                            </div>
                            <div class="col-2">
                                <p>Secondry Email</p>
                                <b>arthav10@gmail.com</b>
                            </div>

                        </div>
                        <br>
                        <hr>
                        <br>
                        <div class="row">
                            <h3>Address Detail</h3>
                        </div>
                        <div class="row">
                            <div class="col-5">
                                <div class="card p-5 rounded-4">
                                    <div class="col">
                                        <h4 class="color-blue">Permanent Adress</h4>
                                        <hr>
                                        <h5 class="color-kesari">Atharv</h5>
                                        <p style="height: 7rem;">Lorem ipsum dolor sit amet consectetur, adipisicing
                                            elit. Qui, rerum?</p>
                                        <h5 class="color-kesari">owner</h5>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>


</body>

</html>