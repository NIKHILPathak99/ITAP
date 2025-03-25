<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  <style>
    /* body{
      background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.4)),
        url("mountains-7774999_1280.jpg");
      background-position: center;
      background-size: cover;
      background-repeat: no-repeat;
      display: flex;
      justify-content: center;
      align-items: center;
    } */

    .form-box {
      width: 100%;
      max-width: 450px;
      background: rgba(34, 52, 66, 0.9);
      padding: 20px;
      border-radius: 20px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
      padding: 30px !important;
    }

    .button-box {
      display: flex;
      justify-content: center;
      position: relative;
    }

    .toggle-btn {
      flex: 1;
      border: none;
      background: none;
      padding: 10px 0;
      cursor: pointer;
      font-weight: bold;
      color: #ff105f;
    }

    .toggle-btn.active {
      color: white;
      background: linear-gradient(to right, #ff105f, #ffad06);
      border-radius: 20px;
    }

    .input-field {
      margin-bottom: 15px;
    }

    .submit-btn {
      width: 100%;
      background: linear-gradient(to right, #ff105f, #ffad05);
      color: white;
      border: none;
      border-radius: 20px;
      margin-top: 20px !important;

    }

    .checkbox {
      margin-right: 5px;
    }

    .left {
      width: 65% !important;
    }
  </style>


  <title>Itap</title>
</head>

<body style="background-color: rgb(24, 42, 60);">
  <section class="container-fluid d-flex justify-content-center align-items-center py-5" style="height: 100vh;">
    <div class="container">
      <div class="row g-2">
        <div class="col-lg-6 col-md-6 col-sm-12 d-flex justify-content-center my-auto">
          <div class=" left ms-4">
            <h1 class="fs-1 text-light">Hire top talent in 48 hours with itap.</h1>
            <p class="text-light mt-5">Streamline your recruitment with AI-driven precision. Single solution from
              Fresher to experienced hiring.</p>

          </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-12">
          <div class="">
            <div class="hero">
              <div class="form-box">
               <%String msg = (String) session.getAttribute("msg");
  if(msg!=null){%>
  <p class="text-center text-danger"><%=msg %></p>
  
  <%}
  else{%>
 <p class="text-center text-danger"></p>
 <%} 
 session.setAttribute("msg",null);%>
                <div class="button-box mb-3">
                  <button type="button" class="toggle-btn active" id="loginBtn" onclick="showLogin()">Log In</button>
                  <button type="button" class="toggle-btn" id="registerBtn" onclick="showRegister()">Register</button>
                </div>
                <form id="loginForm" action="login" class="d-block">
                  <div class="mb-3">
                    <input type="text" class="form-control input-field" name="userid" placeholder="Email ID" required>
                  </div>
                  <div class="mb-3">
                    <input type="password" class="form-control input-field" name="password" placeholder="Password" required>
                  </div>
                  <div class="d-flex">
                  <div class="form-check mb-3">
                    <input type="checkbox" class="form-check-input checkbox" id="rememberPassword">
                    <label for="rememberPassword" class="form-check-label text-light">Remember Password</label>
                  </div>
                    <a class="text-light mx-auto" href="EmailEnter.jsp">Forgot Password</a>
                  </div>
                  <button type="submit" class="btn submit-btn ">Log In</button>
                </form>
                <form id="registerForm" action="Register" class="d-none">
                  <div class="mb-3">
                    <input type="text" name="username" class="form-control input-field" placeholder="Full Name" required>
                  </div>
                  <div class="mb-3">
                    <input type="email" class="form-control input-field" name="userid" placeholder="Email ID" required>
                  </div>
                  <div class="mb-3">
                    <input type="password" class="form-control input-field" name="password" placeholder="Password" required>
                  </div>
                  <div class="mb-3">
                    <input type="mobile-no" class="form-control input-field" name="contact" placeholder="mobile number" required>
                  </div>
                  <label class="text-warning">Work Status</label>
                  <div class="radio-group">
                    <input type="radio" id="experienced" name="workstatus" value="experienced" required>
                    <label for="experienced" class="text-light">I'm experienced</label>
                    <br>
                    <input type="radio" id="fresher" name="workstatus" value="fresher">
                    <label for="fresher" class="text-light mb-3">I'm a fresher</label>
                  </div>
                  <div class="form-check mb-3">
                    <input type="checkbox" class="form-check-input checkbox" id="termsConditions">
                    <label for="termsConditions" class="form-check-label text-light">I agree to terms and
                      conditions</label>
                  </div>
                  <button type="submit" class="btn submit-btn">Register</button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

































  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>

  <script>
    const loginForm = document.getElementById("loginForm");
    const registerForm = document.getElementById("registerForm");
    const loginBtn = document.getElementById("loginBtn");
    const registerBtn = document.getElementById("registerBtn");

    function showLogin() {
      loginForm.classList.remove("d-none");
      loginForm.classList.add("d-block");
      registerForm.classList.remove("d-block");
      registerForm.classList.add("d-none");
      loginBtn.classList.add("active");
      registerBtn.classList.remove("active");
    }

    function showRegister() {
      registerForm.classList.remove("d-none");
      registerForm.classList.add("d-block");
      loginForm.classList.remove("d-block");
      loginForm.classList.add("d-none");
      registerBtn.classList.add("active");
      loginBtn.classList.remove("active");
    }
  </script>

</body>

</html>