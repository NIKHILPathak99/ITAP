<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String name = (String) session.getAttribute("name");
    if(name==null){
    	session.setAttribute("msg", "Please Login First !!");
    	response.sendRedirect("index.jsp");
    }
    else{
    
    %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <style>
        img{
            border-radius: 10px !important;
        }
    </style>
   <title>Itap</title>
  </head>
  <body style="background-color: rgb(15 23 42);">

      <section class="container-fluid py-5 mt-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div>
                        <h1 class="text-success fs-1 mb-3">About Itap</h1>
                        <p class="text-light text-justify">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nemo maxime excepturi aliquid inventore itaque consequuntur repellat atque voluptatibus modi, in, doloremque magnam omnis temporibus quibusdam expedita a sapiente quam, odit eligendi consectetur quo delectus. Veritatis, tempora. Aliquid sint id fuga vitae architecto non deleniti eos culpa! Tenetur fuga ab sapiente error, incidunt rerum totam repellat iusto minima accusantium provident eaque veniam explicabo, quaerat eveniet numquam. Tempora quos, neque laboriosam iure recusandae obcaecati minima voluptatum facere magni exercitationem necessitatibus iste. Suscipit, rerum! Fugiat rerum amet porro commodi nulla deleniti sit ea, inventore deserunt ab reiciendis aut recusandae voluptatem magni  </p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="mt-5">
                        <img src="imgs/about-img.webp" class="img-thumbnail" alt="">
                    </div>
                </div>
            </div>
        </div>
      </section>


      <hr class="mb-5 text-light">

      <footer class="container-fluid  mb-4">
        <div class="container ">
          <div class="row mt-5">
           <div class="col-md-3 col-lg-3 col-xl-3 col-sm-12 mx-auto mt-3">
             <h5 class="text-uppercase mb-4 font-weight-bold text-warning">INNOVATIVE TALENT ACQUISITION PLATFORM
            </h5>
             <p class="text-light">Your gateway to finding the perfect career opportunity. We connect job seekers with top companies worldwide.</p>
           </div>
        
  
            <div class="col-md-2 col-lg-2 col-xl-2 col-sm-6  col mt-3">
              <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Quick Links</h5>
              <p><a href="#" class="text-light" style="text-decoration: none;">Home</a></p>
              <p><a href="Carrer.jsp" class="text-light" style="text-decoration: none;">Career</a></p>
              <p><a href="About.jsp" class="text-light" style="text-decoration: none;">About Us</a></p>
              <p><a href="#" class="text-light" style="text-decoration: none;">Contact</a></p>
            </div>
  
            <div class="col-md-3 col-lg-2 col-xl-2 col-sm-6 col mt-3">
              <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Resources</h5>
              <p><a href="#" class="text-light" style="text-decoration: none;">FAQs</a></p>
              <p><a href="#" class="text-light" style="text-decoration: none;">Admins</a></p>
              <p><a href="#" class="text-light" style="text-decoration: none;">Privacy Policy</a></p>
              <p><a href="#" class="text-light" style="text-decoration: none;">Terms of Service</a></p>
            </div>
  
            <div class="col-md-4 col-lg-3 col-xl-3 col-sm-6 mx-auto mt-3">
              <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Contact</h5>
              <p class="text-light"><i class="fas fa-home mr-3 text-light"></i> Greater Noida ,Uttar Pradesh</p>
              <p class="text-light"><i class="fas fa-phone mr-3 text-light"></i> 9651488774</p>
              <p class="text-light"><i class="fas fa-envelope mr-3 text-light"></i> support@itap.com</p>
           </div>
         </div>
         <div class="row mt-5">
           <div class="col-md-6 col-lg-6 col-xl-6 col-sm-6 mx-auto mt-3">
            <a href="#" class="text-info  mx-3 fs-2 me-4 social-media"><i class="fa-brands fa-facebook"></i></i></a>
              <a href="#" class="text-info  mx-3 fs-2 me-4 social-media"><i class="fab fa-twitter"></i></a>
              <a href="#" class="text-info  mx-3 fs-2 me-4 social-media"><i class="fab fa-linkedin"></i></a>
              <a href="#" class="text-info  mx-3 fs-2 me-4 social-media"><i class="fab fa-instagram"></i></a>
           </div>
           <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5 mx-auto mt-3  text-end">
             
              <p class=" fs-4 text-success text-center">&copy; 2024 Itap Portal. All Rights Reserved.</p>
           </div>
         </div>
        </div>
      </div>
    </footer>



























    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    
   
  </body>
</html>
<%}%>