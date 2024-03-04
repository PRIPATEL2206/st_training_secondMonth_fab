<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <link rel="stylesheet" type="text/css" href="CSS/employee_form.css">
    </head>

    <body>
        <div class="row">
            <jsp:include page="sidebar.jsp" />

            <div class="card">


                <div class="form_links">

                    <ul class="list-group list-group-flush">
                        <div>
                            <div class="display_flex">
                                <div class="links_heading">Employment Information</div>
                                <div class="header_icons">
                                    <div class="plus_sign" id="employee_info_tab_display_btn">
                                        <span><i class="fas fa-plus" id="plus_sign"></i></span>
                                    </div>
                                    <div class="gre_sign" id="employee_info_tab_hide_btn" style="display: none;">
                                        <span><i class="fa-solid fa-minus"></i></span>
                                    </div>
                                </div>
                            </div>
                            <div class="employment_info_div" id="employment_info_tab_data" style="display: none;">
                                <div class="display_flex">
                                    <div class="links">
                                        <p>Employee</p>
                                        <div>
                                            <span><i class="fa-solid fa-greater-than"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="display_flex">
                                    <div class="links">
                                        <p>Personal</p>
                                        <div>
                                            <span><i class="fa-solid fa-greater-than"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="display_flex">
                                    <div class="links">
                                        <p>Contact</p>
                                        <div>
                                            <span><i class="fa-solid fa-greater-than"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="display_flex">
                                    <div class="links">
                                        <p>Family</p>
                                        <div>
                                            <span><i class="fa-solid fa-greater-than"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="display_flex">
                                    <div class="links">
                                        <p>Emergency</p>
                                        <div>
                                            <span><i class="fa-solid fa-greater-than"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="display_flex">
                                    <div class="links">
                                        <p>Nominee</p>
                                        <div>
                                            <span><i class="fa-solid fa-greater-than"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="display_flex">
                                    <div class="links">
                                        <p>Health</p>
                                        <div>
                                            <span><i class="fa-solid fa-greater-than"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="display_flex">
                                    <div class="links">
                                        <p>Photograph</p>
                                        <div>
                                            <span><i class="fa-solid fa-greater-than"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="display_flex">
                                    <div class="links">
                                        <p>Attachments</p>
                                        <div>
                                            <span><i class="fa-solid fa-greater-than"></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr>
                        </div>
                        <div>
                            <div class="display_flex">
                                <div class="links_heading">Employment</div>
                                <div class="header_icons">
                                    <div class="plus_sign" id="employment_tab_display_btn">
                                        <span><i class="fas fa-plus" id="plus_sign"></i></span>
                                    </div>
                                    <div class="gre_sign" id="employment_tab_hide_btn" style="display: none;">
                                        <span><i class="fa-solid fa-minus"></i></span>
                                    </div>
                                </div>
                            </div>
                            <div class="employment_info_div" id="employment_tab_data" style="display: none;">
                                <div class="display_flex">
                                    <div class="links">
                                        <p>Allowance Declaration</p>
                                        <div>
                                            <span><i class="fa-solid fa-greater-than"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="display_flex">
                                    <div class="links">
                                        <p>Job</p>
                                        <div>
                                            <span><i class="fa-solid fa-greater-than"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="display_flex">
                                    <div class="links">
                                        <p>Reporting Officer</p>
                                        <div>
                                            <span><i class="fa-solid fa-greater-than"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="display_flex">
                                    <div class="links">
                                        <p>Previous Employment</p>
                                        <div>
                                            <span><i class="fa-solid fa-greater-than"></i></span>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <hr>
                        <div>
                            <div class="display_flex">
                                <div class="links_heading">Qualification</div>
                                <div class="header_icons">
                                    <div class="plus_sign" id="qualification_tab_display_btn">
                                        <span><i class="fas fa-plus" id="plus_sign"></i></span>
                                    </div>
                                    <div class="gre_sign" id="qualification_tab_hide_btn" style="display: none;">
                                        <span><i class="fa-solid fa-minus"></i></span>
                                    </div>
                                </div>
                            </div>
                            <div class="employment_info_div" id="qualification_tab_data" style="display: none;">
                                <div class="display_flex">
                                    <div class="links">
                                        <p>Previous Employment</p>
                                        <div>
                                            <span><i class="fa-solid fa-greater-than"></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr>
                    </ul>
                </div>
                &nbsp;
                <div>
                    <jsp:include page="family.jsp" />

                </div>
            </div>
        </div>
        <script>
            document.getElementById('employee_info_tab_display_btn')
                .addEventListener('click', function () {

                    $("#employee_info_tab_hide_btn").toggle();
                    $("#employee_info_tab_display_btn").toggle();
                    $("#employment_info_tab_data").toggle();
                });
            document.getElementById('employee_info_tab_hide_btn').addEventListener(
                'click', function () {
                    $("#employee_info_tab_hide_btn").toggle();
                    $("#employee_info_tab_display_btn").toggle();
                    $("#employment_info_tab_data").toggle();
                });

            document.getElementById('employment_tab_display_btn').addEventListener(
                'click', function () {

                    $("#employment_tab_display_btn").toggle();
                    $("#employment_tab_hide_btn").toggle();
                    $("#employment_tab_data").toggle();
                });
            document.getElementById('employment_tab_hide_btn').addEventListener(
                'click', function () {

                    $("#employment_tab_display_btn").toggle();
                    $("#employment_tab_hide_btn").toggle();
                    $("#employment_tab_data").toggle();
                });
            document.getElementById('qualification_tab_display_btn').addEventListener(
                'click', function () {

                    $("#qualification_tab_display_btn").toggle();
                    $("#qualification_tab_hide_btn").toggle();
                    $("#qualification_tab_data").toggle();
                });
            document.getElementById('qualification_tab_hide_btn').addEventListener(
                'click', function () {

                    $("#qualification_tab_display_btn").toggle();
                    $("#qualification_tab_hide_btn").toggle();
                    $("#qualification_tab_data").toggle();
                });
        </script>
    </body>

    </html>