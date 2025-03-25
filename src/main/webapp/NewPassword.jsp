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

   .container2 {
      background: #fff;
      padding: 30px;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      text-align: center;
      width: 100%;
      max-width: 400px;
    }

    .container2 h2 {
      margin-bottom: 20px;
      font-size: 24px;
      color: #333;
    }

    .container2 p {
      font-size: 14px;
      color: #555;
      margin-bottom: 20px;
    }

    input[type="password"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 20px;
      border: 1px solid #ddd;
      border-radius: 4px;
      font-size: 16px;
      outline: none;
      transition: border-color 0.3s ease-in-out;
    }

    input[type="password"]:focus {
      border-color: #4a90e2;
      box-shadow: 0 0 5px rgba(74, 144, 226, 0.5);
    }

    button {
      background-color: #4a90e2;
      color: white;
      border: none;
      padding: 12px 20px;
      font-size: 16px;
      cursor: pointer;
      border-radius: 4px;
      width: 100%;
      transition: background-color 0.3s;
    }

    button:hover {
      background-color: #357abd;
    }

    .back-link {
      margin-top: 15px;
      display: block;
      font-size: 14px;
      color: #4a90e2;
      text-decoration: none;
    }

    .back-link:hover {
      text-decoration: underline;
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
          <div class="container2">
    <h2>Enter Your New Password</h2>
    <p>Enter your new password below, and re-enter again to confirm your password.</p>
    <form id="forgotPasswordForm" action="ChangePassword" method="post">  
      <input type="password" name="password" placeholder="Enter your new Password" id="p" required>
      <span id="m" style="color:red;" class="mx-2"></span> <br>
      <input type="password" placeholder=" Re-Enter Your Password" type="password" id="cp" onkeyup="f()" name="cpassword" required>
      <button type="submit">Change Password</button>
    </form>
  </div>
    </div>
  </section>
<script type="text/javascript">
		function f() {
			var p=document.getElementById("p").value.trim();
			var cp=document.getElementById("cp").value.trim();
			var m=document.getElementById("m");
			if(cp!=p){
				m.innerHTML="Invalid!";
			}else{
				m.innerHTML="";
			}
		}
	</script>

</body>

</html>
<%}%>