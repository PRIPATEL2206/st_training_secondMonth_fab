<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login Page</title>
    <link href="https://cdn.jsdelivr.net/npm/tabler@latest/dist/css/tabler.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('/loginBg.jpg');
            background-size: cover;
            height: 100vh;
            overflow: hidden;
            background-image: url("loginBg.jpg");
            background-repeat: no-repeat;
        }

        .content {
            width: 100%;
            height: 100%;
            background-color: rgba(45, 45, 255, 0.5);
        }

        .hrms {
            font-size: large;
            color: #333e7d;
        }

        .big {
            font-size: x-large;
        }

        .buttun {
            color: #fff;
            background-color: #e95b1f;
            border-color: #e95b1f;
            border-radius: 10px;
        }
    </style>
</head>

<body class="antialiased border-top-wide border-primary d-flex flex-column">
    <div class="content ">
        <div class="container-tight py-4  mt-5">

            <form class="card card-md" id="loginForm" action="/login" method="post" style="border-radius: 20px;">
                <div class="text-center mt-5">
                    <a href="."><img src="stlogo.png" alt="" width="200"></a>
                </div>
                <div class="card-body">
                    <h2 class="card-title text-center mb-4 hrms">Human Resource Management System</h2>
                    <h1 class="card-title text-center mb-4  big">HRMS Login</h1>
                    <div class="mb-3">
                        <label class="form-label">Username</label>
                        <input type="text" class="form-control" id="username" name="username"
                            placeholder="Enter your username" required>
                    </div>
                    <div class="mb-2">
                        <label class="form-label">
                            Password

                        </label>
                        <div class="input-group input-group-flat">
                            <input type="password" class="form-control" id="password" name="password"
                                placeholder="Password" required>
                        </div>
                        <span class="form-label-description">
                            <a href="./forgot-password.html">I forgot my password</a>
                        </span>
                    </div>
                    <div class="form-footer">
                        <button type="submit" class="btn buttun btn-block">Sign in</button>
                    </div>
                </div>
                <div class="text-center text-muted mt-3 px-4 mb-3">
                    <h3 style="text-align: start;">Download Mobile App</h3>
                </div>
            </form>

        </div>
    </div>

</body>

</html>