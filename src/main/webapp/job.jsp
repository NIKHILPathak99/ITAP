<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itap.DAO.DAO"%>
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

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="Carrer.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <style>
            .Log-out{
                border: none;
                width: 100px !important;
                border-radius: 10px !important;
                padding: 5px !important;
            }
            .icon{
                opacity: 0.7;
            }
            .job-details{
                height: 350px !important;
                 width: 315px !important;
                  border-radius: 15px !important;
               }
            .bg-lights{
                   background-color: rgba(59, 61, 63, 0.266);
              }
              .bg-color{
                    background-color: rgba(59, 61, 63, 0.266);
              }
              .nav-item.dropdown:hover .dropdown-menu {
                  display: block;
               }
               
               .log-out{
                 border: none;
                 width: 100px !important;
                 border-radius: 10px !important;
                 padding: 5px !important;
                 background-color: rgb(103, 130, 154);
                 transition: all 0.5s;
                 margin: 50px 0  0 0px;
                 font-size: 20px;
                 color:#fff05f;
                 
               }
                .log-out:hover{
                 background: #0ef;
                 color: #1f242d;
                 box-shadow: 0 0 20px #0ef;
               }
               .navbar{
                 margin-bottom: 100px !important;
               }
               
               .navbar-light .navbar-toggler-icon{
                   background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3e%3cpath stroke='rgba%28255, 0, 0, 1%29' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
               }
               .navbar-toggler {
                  padding: .25rem .75rem;
                  font-size: 1.25rem;
                  line-height: 1;
                  background-color: rgb(15 23 42);;
                  border: 1px solid tranparent;
                  border-radius: .25rem;
                  transition: box-shadow .15s ease-in-out;
                }
                .navbar-light .navbar-toggler{
                  border: 1px solid red;
                }
        </style>

    <title>itap</title>
</head>

<body style="background-color: rgb(15 23 42);">
   <nav class="navbar navbar-expand-lg navbar-light mt-2">
    <div class="container">
        <a class="navbar-brand text-light ms-2" href="index.jsp">logo</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active text-light me-2" href="#">Company Review</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active text-light" href="#">About Us</a>
                </li>
            </ul>
                  
                      <%
       name= name.trim();
       String n[]=name.split(" ");
       String icon="";
       for(String x:n){
    	   icon = icon + x.charAt(0);
       }
       %>
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item dropdown">
                    <a class="nav-link active text-light me-5 d-flex" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                          <p class="icon bg-primary rounded-circle p-2"><%=icon %></p>
           <p class = "mt-2 ms-2"><%=name %><p class="mt-2 ms-2"><i class="fa-solid fa-angle-down"></i></p></p>
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item mb-2" href="#">Profile Setting</a></li>
                        <li>
                            <form class="d-flex dropdown-item" method="post" action="LogOut">
                                <div class="navdiv" style="width: 150px;">
                                    <button class="text-light bg-danger Log-out">Log Out</button>
                                </div>
                            </form>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>

    
    
    <div class="container text-warning text-center mt-5 bg-color">
      <marquee behavior="scroll" direction="left" scrollamount="5" class="fs-1">
         Welcome to Your <span style="color: #98fb98;">ITAP</span> You Can Search Your Skills Based Job
      </marquee>
    </div>
  
  
  
    <section class="container-fluid mt-1 py-5">
        <div class="container py-5">
        <%String jobtype = (String) session.getAttribute("job");
        if(jobtype!=null) {%>
         <h1 class="mb-5 text-success"> Jobs For <%=jobtype %></h1>
         <%}%>
            <div class="row g-4 mb-3">   
                  <%
                  ArrayList<HashMap<String, Object>> jobs = (ArrayList<HashMap<String, Object>>) session.getAttribute("type");
                  if(jobs.size()==0){ %> 
                 <h5 class="text-light">No Data To Show </h5>
                
                <%}
                for(HashMap<String, Object> job:jobs)    
                {
              %>  
                <div class=" col-sm-6 col-md-6 col-lg-4 col-xl-4">
              
                    <div class="bg-lights job-details p-2 text-light ps-4 pt-3">
                        <div class=" ">
                           <h4><%= job.get("post")%></h4>
                            <p style="opacity: 0.7;"><%= job.get("cname")%></p>
                        </div>
                        <div class=" mt-3">
                            <i class="fa-solid fa-location-dot icon me-3"></i> <p style="display: inline-block;"><%= job.get("location")%></p>
                           <div class="d-flex"><p ><i class="fa-solid fa-wallet icon"></i></p></i><p class="ms-3"><i class="fa-solid fa-indian-rupee-sign px-1"></i><%= job.get("minsal")%> - <i class="fa-solid fa-indian-rupee-sign px-1"></i><%= job.get("maxsal")%></p></div>
                        </div>
                        <div class="mt-3">
                            <div class="d-flex"><p class=" fs-6 me-2"><i class="fa-solid fa-house icon"></i></p><p class="fs-6 me-2 ">Work From Home</p><p class="me-2 ms-3"><i class="fa-solid fa-clock icon"></i></p> <%= job.get("type")%></p></div>
                            <div>
                                <div class="d-flex"><p class=" fs-6 me-2"><i class="fa-solid fa-briefcase icon"></i></p><p class="fs-6 me-2 "><%= job.get("exp")%></p><p class="me-2 ms-3"><i class="fa-solid fa-language icon"></i></p> Basic English</p></div>
                            </div>
                        </div>
                        <div>
                            <form action="GetJobByName" class="ms-5">
                            <input type = "hidden" value=<%= job.get("post")%> name="name">
                            <input type = "hidden" value=<%= job.get("location")%> name="locate">
                                <button class="log-out mt-3 " style="width: 170px !important;">More Details<i class="fa-solid fa-chevron-right ms-2"></i></button>
                            </form>
                        </div>
                        
                    </div>
                </div>
                    <%} %>
               
        </div>
        </div>
    </section>
    
    <hr class="text-light">

  <footer class="container-fluid  mb-5">
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
            <p><a href="About.jsp" class="text-light" style="text-decoration: none;">About Us</a></p>
            <p><a href="Carrer.jsp" class="text-light" style="text-decoration: none;">Career</a></p>
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
            <h5 class="text-uppercase mb-4 font-weight-bold text-warning">  Contact</h5>
            <p class="text-light"><i class="fas fa-home mr-3 text-light"></i>  Greater Noida ,Uttar Pradesh</p>
            <p class="text-light"><i class="fas fa-phone mr-3 text-light"></i>  6200792144</p>
            <p class="text-light"><i class="fas fa-envelope mr-3 text-light"></i>  support@Itap.com</p>
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




















    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>


</body>

</html>

<%} %>

