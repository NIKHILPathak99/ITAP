<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%String id = (String) session.getAttribute("id");
    if(id==null){
    session.setAttribute("msg", "Please Login First!!");
    response.sendRedirect("Home.jsp");}
    else{%>
    
    
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

    .otp-container {
      text-align: center;
      background: #3b4550;
      padding: 30px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      border-radius: 8px;
      width: 350px;
      color: white;
    }

    .otp-container h2 {
      margin-bottom: 20px;
      color: #333;
    }

    .otp-input {
      display: flex;
      justify-content: space-between;
      margin-bottom: 20px;
    }

    .otp-input input {
      width: 40px;
      height: 50px;
      text-align: center;
      font-size: 18px;
      border: 1px solid #ddd;
      border-radius: 4px;
      outline: none;
      transition: 0.3s;
      background-color: #cececec3;
    }

    .otp-input input:focus {
      border-color: #4a90e2;
      box-shadow: 0 0 5px rgba(29, 30, 30, 0.5);
    }

    button {
      background-color: #4a90e2;
      color: white;
      border: none;
      padding: 10px 20px;
      font-size: 16px;
      cursor: pointer;
      border-radius: 4px;
      transition: 0.3s;
    }

    button:hover {
      background-color: #357abd;
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
        <div class="col-lg-5 col-md-6 col-sm-12">
          <div class="mx-auto otp-container">
    <h2 style="color: rgb(240, 255, 33);">OTP Verification</h2>
    <p>Please enter the 6-digit OTP sent to your phone.</p>
    <form id="otpForm" action="CheckOtp" method="post">
    <%String msg = (String)session.getAttribute("msg");
    if(msg!=null){
    %>
    <p class="text-center text-danger"><%=msg %></p>
    <%}
    else{%>
    <p></p>
    <%}
    session.setAttribute("msg", null);%>
      <div class="otp-input">
        <input type="text" maxlength="1" name="otp1"  required>
        <input type="text" maxlength="1" name="otp2"  required>
        <input type="text" maxlength="1" name="otp3"  required>
        <input type="text" maxlength="1" name="otp4"  required>
        <input type="text" maxlength="1" name="otp5"  required>
        <input type="text" maxlength="1" name="otp6"  required>
      </div>
      <button type="submit">Verify OTP</button>
    </form>
  </div>
    </div>
  </section>

 <script>
    // Automatically move to the next input box after typing
    const inputs = document.querySelectorAll(".otp-input input");
    inputs.forEach((input, index) => {
      input.addEventListener("input", (e) => {
        if (e.target.value && index < inputs.length - 1) {
          inputs[index + 1].focus();
        }
      });

      input.addEventListener("keydown", (e) => {
        if (e.key === "Backspace" && index > 0 && !e.target.value) {
          inputs[index - 1].focus();
        }
      });
    });
  </script>

</body>

</html>
<%}%>