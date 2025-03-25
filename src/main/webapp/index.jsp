<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%String name = ((String) session.getAttribute("name"));
 if(name == null){
	 session.setAttribute("msg", "Please! Log In First");
	 response.sendRedirect("Home.jsp");
 }else{%>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
    integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    
    
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.js" integrity="sha512-+k1pnlgt4F1H8L7t3z95o3/KO+o78INEcXTbnoJQ/F2VqDVhWoaiVml/OEHv9HsVgxUaVW+IbiZPUJQfF/YxZw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    
    <script src="script.js"></script>
    
    
    <style> 
           .navbar-light .navbar-toggler-icon{
                   background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3e%3cpath stroke='rgba%28255, 0, 0, 1%29' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
               }
               .navbar-toggler {
                  padding: .25rem .75rem;
                  font-size: 1.25rem;
                  line-height: 1;
                  background-color: rgb(15 23 42);
                  border: 1px solid tranparent;
                  border-radius: .25rem;
                  transition: box-shadow .15s ease-in-out;
                }
                .navbar-light .navbar-toggler{
                  border: 1px solid red;
                }
                #job-post{
                overflow: hidden;
                }
                .job button{
                background: transparent;
                border: none;
                }
                .icon{
                width: max-content;
                
                }
                .search-container {
                  display: flex;
                  width: max-content;
                }
                 .search-container>form>input{
                 width:120px;
                 }
                  .search-container>form img{
                 width: 20px;
                 }
                   .log-out{
                 border: none;
                 width: 100px !important;
                 border-radius: 10px !important;
                 padding: 5px !important;
                 background-color: rgb(103, 130, 154);
                 transition: all 0.5s;
                 font-size: 20px;
                 color:#fff05f;
                 margin:auto;
                 
               }
                .log-out:hover{
                 background: #0ef;
                 color: #1f242d;
                 box-shadow: 0 0 20px #0ef;
               }
               input{
               outline: none;
               }
                
    </style>
    
    
  <title>Itap</title>
</head>

<body style=" background-color: rgb(15 23 42);">
<%String msg= (String)session.getAttribute("msg"); 
if(msg!=null){
%>
<p class="bg-warning text-center text-danger">  <%=msg %> </p>

<%}
else{%>
<p></p>
	<%}
session.setAttribute("msg", null);%>
  <nav class="navbar navbar-expand-lg  navbar-light mt-2 abc">
    <div class="container ">
      <a class="navbar-brand text-light" href="#">logo</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse " id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
          <li class=" navbar-collapse">
            <a class="nav-link active xyz" aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="#companies">Companies</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="Blog.jsp">Blog</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active " href="#">Services</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active " href="AllJobs">Jobs</a>
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
               <li class="nav-item dropdown my-auto ms-auto">
          <a class="nav-link  d-flex justify-content-center py-auto" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           <p class="icon bg-primary rounded-circle p-2"><%=icon %></p>
           <p class = "mt-2 ms-2"><%=name %><p class="mt-2 ms-2"><i class="fa-solid fa-angle-down"></i></p></p>
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Profile Setting</a></li>
            <li><a class="dropdown-item text-light bg-danger log-out text-center" href="LogOut">Logout</a></li>
            
          </ul>
        </li>
       
        <hr style="width: 30px; color: aliceblue;" class="rotate">
        <ul class="navbar-nav me-auto mb-2 ms-0 mb-lg-0">
          <li class="nav-item dropdown">
            <a class="nav-link active d-flex mt-2" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
              aria-expanded="false">
              For employers <div class="ms-1 " style="margin-top: 1.5px;"><i class="fa-solid fa-angle-down"></i></div>
            </a>
            <ul class="dropdown-menu " aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item " href="#">Employer Login</a></li>
              <li><a class="dropdown-item" href="#job-post">Job Post</a></li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  
  
  <section class="container-fluid sec-img my-5 ">
    <div class="container pt-5 pb-5 pe-5 lll" >
      <h1 class=" abd">Change Happens Today</h1>
      <h1 class="wal">Your job search ends here</h1>
      <h2 class="fs-3 mt-4 text-light mb-5 dis">Discover 50 lakh+ career opportunities</h2>
      
   <div class="search-container border border-info rounded-pill ">
   <form action="search" class="m-2">
   <input type="search" class="border-0 text-light p-1 rounded-0 bg-transparent" placeholder="Searcing Job" name="post"/>
   <input type="search" class="border-0 text-light border-start rounded-0 p-1 bg-transparent"  placeholder="location" name="location"/>
   <input type="search" class="border-0 text-light border-start rounded-0 p-1 bg-transparent" placeholder="Experience" name="exp" />
   <button class="border-0 bg-transparent"><img src="imgs/search.png" alt=""></button>
   </form>
  </div>
        
 
    </div>
  </section>

  <section class="container-fluid my-5 job">
    <div class="container mb-4">
      <div class="row g-3 ">
        <div class=" col-sm-4 ">
          <div class="" style="height: 320px;" data-aos="fade-right">
            <h1 class="text-light itap">Popular Searches on ITAP</h1>
          </div>
        </div>
        <div class=" col-sm-4 "data-aos="flip-left">
          <div class="abe" style="height: 320px;">
            <h4 class="text-end fw-light" style="color: rgba(255, 255, 255, 0.531);"><!-- TRENDING AT #1 --></h4>
            <h3 class="text-end text-light mt-4">Jobs for Freshers</h3>
            <div class="w-100 d-flex">
              <div class="image">
              </div>
              <div class="ddd ">
              <form action="FresherJob" method="post">
              <input type="hidden" name="type" value="Fresher">
              <button class=" fs-3 text-light text-decoration-none view">View all <span class="fs-4"><i
                      class="fa-solid fa-arrow-right"></i></span></button>
              </form>
              </div>
            </div>
          </div>
        </div>
        <div class=" col-sm-4 " data-aos="flip-right">
          <div class=" abe" style="height: 320px;">
            <h4 class="text-end fw-light" style="color: rgba(255, 255, 255, 0.531);"><!-- TRENDING AT #2 --></h4>
            <h3 class="text-end text-light mt-4">Work From Home Jobs </h3>
            <div class="w-100 d-flex">
              <div class="images">
                <!-- <img src="Project-3-Photoroom-Photoroom.png" alt=""> -->
              </div>
              <div class="ddd ">
                <form action="ByType" method="post">
              <input type="hidden" name="type" value="work from home">
              <button class=" fs-3 text-light text-decoration-none view">View all <span class="fs-4"><i
                      class="fa-solid fa-arrow-right"></i></span></button>
              </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="container">
      <div class="row g-3 ">
        <div class=" col-sm-4 ">
          <div class="  abe" style="height: 320px;"data-aos="fade-up">
            <h4 class="text-end fw-light" style="color: rgba(255, 255, 255, 0.531);"><!-- TRENDING AT #3 --></h4>
            <h3 class="text-end text-light mt-4">Part time Jobs</h3>
            <div class="w-100 d-flex">
              <div class="imagess">
                <!-- <img src="project-4 (1)-Photoroom.jpg" alt=""> -->
              </div>
              <div class="ddd ">
                <form action="ByType" method="post">
              <input type="hidden" name="type" value="part time">
              <button class=" fs-3 text-light text-decoration-none view">View all <span class="fs-4"><i
                      class="fa-solid fa-arrow-right"></i></span></button>
              </form>
              </div>
            </div>
          </div>
        </div>
        <div class=" col-sm-4 ">
          <div class="  abe" style="height: 320px;" data-aos="fade-up">
            <h4 class="text-end fw-light" style="color: rgba(255, 255, 255, 0.531);"><!-- TRENDING AT #4 --></h4>
            <h3 class="text-end text-light mt-4">Jobs for Women</h3>
            <div class="w-100 d-flex">
              <div class="imagesss">
              </div>
              <div class="ddd ">
                <form action="ByType" method="post">
              <input type="hidden" name="type" value="women">
              <button class=" fs-3 text-light text-decoration-none view">View all <span class="fs-4"><i
                      class="fa-solid fa-arrow-right"></i></span></button>
              </form>
              </div>
            </div>
          </div>
        </div>
        <div class=" col-sm-4 ">
          <div class="  abe" style="height: 320px;" data-aos="fade-up">
            <h4 class="text-end fw-light" style="color: rgba(255, 255, 255, 0.531);"><!-- TRENDING AT #5 --></h4>
            <h3 class="text-end text-light mt-4">International Jobs</h3>
            <div class="w-100 d-flex">
              <div class="imagessss">
              </div>
              <div class="ddd ">
                 <form action="ByType" method="post">
              <input type="hidden" name="type" value="international">
              <button class=" fs-3 text-light text-decoration-none view">View all <span class="fs-4"><i
                      class="fa-solid fa-arrow-right"></i></span></button>
              </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="container-fluid py-5 mt-5 mb-5" id="companies">
    <div class="container">
      <h1 class="text-light text-center mb-5">Job Openings in Top companies</h1>
      <div class="carousel-container mt-5">
        <div class="carousel-cards " id="carousel-cards">
          <div class="card" style="background-color:rgba(30, 40, 54, 0.909);">
            <img src="imgs/bajaj.webp" class="ms-0 mb-5 mt-2 imag" alt="Image 1">
            <h3 class="text-start text-light p-2 fs-4">Bajaj Allianz Life Insurance</h3>
            <p class="text-start ms-2 fs-5" style="color: rgb(196, 196, 196);">Provide of life insurance and financial
              services.</p>
            <div class="jhhh">
              <a href="" class="text-decoration-none  text-success">View Jobs <span class="fs-5 ms-2"><i
                    class="fa-solid fa-arrow-right"></i></span></a>
            </div>
          </div>

          <div class="card" style="background-color: rgba(30, 40, 54, 0.909);">
            <img src="imgs/ic-paytm.webp" class="ms-0 mb-5 mt-2 imag" alt="Image 1">
            <h3 class="text-start text-light p-2 fs-4">Paytm Service Pvt.Ltd.</h3>
            <p class="text-start ms-2 fs-5" style="color: rgb(196, 196, 196);">Digital payment and e-commerce
              facilitator.</p>
            <div class="jhhh">
              <a href="" class="text-decoration-none  text-success">View Jobs <span class="fs-5 ms-2"><i
                    class="fa-solid fa-arrow-right"></i></span></a>
            </div>
          </div>

          <div class="card" style="background-color:rgba(30, 40, 54, 0.909);">
            <img src="imgs/322333.webp" class="ms-0 mb-5 mt-2 zomato" alt="Image 1">
            <h3 class="text-start text-light p-2 fs-4">Zomato</h3>
            <p class="text-start ms-2 fs-5" style="color: rgb(196, 196, 196);">Online food delivery marketplace.</p>
            <div class="jhhh">
              <a href="" class="text-decoration-none  text-success">View Jobs <span class="fs-5 ms-2"><i
                    class="fa-solid fa-arrow-right"></i></span></a>
            </div>
          </div>

          <div class="card" style="background-color:rgba(30, 40, 54, 0.909);">
            <img src="imgs/ic-swiggy.webp" class="ms-0 mb-5 mt-2 zomato" alt="Image 1">
            <h3 class="text-start text-light p-2  fs-4">Swiggy</h3>
            <p class="text-start ms-2 fs-5" style="color: rgb(196, 196, 196);">Food delivery and ordering platform</p>
            <div class="jhhh">
              <a href="" class="text-decoration-none  text-success">View Jobs <span class="fs-5 ms-2"><i
                    class="fa-solid fa-arrow-right"></i></span></a>
            </div>
          </div>

          <div class="card" style="background-color:rgba(30, 40, 54, 0.909);">
            <img src="imgs/kotak-life.webp" class="ms-0 mb-5 mt-2 zomato" alt="Image 1">
            <h3 class="text-start text-light p-2 fs-4 ">Kotak life Insurence</h3>
            <p class="text-start ms-2 fs-5" style="color: rgb(196, 196, 196);">Life insurence and financial company.</p>
            <div class="jhhh">
              <a href="" class="text-decoration-none  text-success">View Jobs <span class="fs-5 ms-2"><i
                    class="fa-solid fa-arrow-right"></i></span></a>
            </div>
          </div>

          <div class="card" style="background-color:rgba(30, 40, 54, 0.909);">
            <img src="imgs/zepto.webp" class="ms-0 mb-5 mt-2 " alt="Image 1">
            <h3 class="text-start text-light p-2 fs-3">Zepto</h3>
            <p class="text-start ms-2 fs-5" style="color: rgb(196, 196, 196);">Delivery and logistics services
              facilitator</p>
            <div class="jhhh">
              <a href="" class="text-decoration-none  text-success">View Jobs <span class="fs-5 ms-2"><i
                    class="fa-solid fa-arrow-right"></i></span></a>
            </div>
          </div>

          <div class="card" style="background-color:rgba(30, 40, 54, 0.909);">
            <img src="imgs/tata-aia.webp" class="ms-0 mb-5 mt-2" alt="Image 1">
            <h3 class="text-start text-light p-2 fs-4">Tata AIA</h3>
            <p class="text-start ms-2 fs-5" style="color: rgb(196, 196, 196);">Life insurance and financial services
              enterprise.</p>
            <div class="jhhh">
              <a href="" class="text-decoration-none  text-success">View Jobs <span class="fs-5 ms-2"><i
                    class="fa-solid fa-arrow-right"></i></span></a>
            </div>
          </div>

          <div class="card" style="background-color:rgba(30, 40, 54, 0.909);">
            <img src="imgs/bharti-axa.webp" class="ms-0 mb-4 mt-2 zomato" alt="Image 1">
            <h3 class="text-start text-light p-2 fs-4">Bharti Axa life Insurance company</h3>
            <p class="text-start ms-2 fs-5" style="color: rgb(196, 196, 196);">life insurance and financial services.
            </p>
            <div class="jhhh">
              <a href="" class="text-decoration-none  text-success">View Jobs <span class="fs-5 ms-2"><i
                    class="fa-solid fa-arrow-right"></i></span></a>
            </div>
          </div>

          <div class="card" style="background-color:rgba(30, 40, 54, 0.909);">
            <img src="imgs/okay-go.webp" class="ms-0 mb-5 mt-2 zomato" alt="Image 1">
            <h3 class="text-start text-light p-2 fs-4">Okaygo</h3>
            <p class="text-start ms-2 fs-5" style="color: rgb(196, 196, 196);">On-demand services aggregator.</p>
            <div class="jhhh">
              <a href="" class="text-decoration-none  text-success">View Jobs <span class="fs-5 ms-2"><i
                    class="fa-solid fa-arrow-right"></i></span></a>
            </div>
          </div>

          <div class="card" style="background-color:rgba(30, 40, 54, 0.909);">
            <img src="imgs/birla.webp" class="ms-0 mb-5 mt-2 zomato" alt="Image 1">
            <h3 class="text-start text-light p-2 fs-4">Aditya Birla Capital Limited</h3>
            <p class="text-start ms-2 fs-5" style="color: rgb(196, 196, 196);">Financial services & investment provider
            </p>
            <div class="jhhh">
              <a href="" class="text-decoration-none  text-success">View Jobs <span class="fs-5 ms-2"><i
                    class="fa-solid fa-arrow-right"></i></span></a>
            </div>
          </div>

          <div class="card" style="background-color:rgba(30, 40, 54, 0.909);">
            <img src="imgs/max-life.webp" class="ms-0 mb-5 mt-2 zomato" alt="Image 1">
            <h3 class="text-start text-light p-2 fs-4">Max Life Insurance</h3>
            <p class="text-start ms-2 fs-5" style="color: rgb(196, 196, 196);">Life insurance and financial services .
            </p>
            <div class="jhhh">
              <a href="" class="text-decoration-none  text-success">View Jobs <span class="fs-5 ms-2"><i
                    class="fa-solid fa-arrow-right"></i></span></a>
            </div>
          </div>

          <div class="card" style="background-color:rgba(30, 40, 54, 0.909);">
            <img src="imgs/team-lease.webp" class="ms-0 mb-5 mt-2" alt="Image 1">
            <h3 class="text-start text-light p-2 fs-4">Teamlease</h3>
            <p class="text-start ms-2 fs-5" style="color: rgb(196, 196, 196);">Stafing and HR solution <br>partner.</p>
            <div class="jhhh">
              <a href="" class="text-decoration-none  text-success">View Jobs <span class="fs-5 ms-2"><i
                    class="fa-solid fa-arrow-right"></i></span></a>
            </div>
          </div>

          <div class="card" style="background-color:rgba(30, 40, 54, 0.909);">
            <img src="imgs/flipkart.webp" class="ms-0 mb-5 mt-2 zomato" alt="Image 1">
            <h3 class="text-start text-light p-2 fs-4">FLipkart</h3>
            <p class="text-start ms-2 fs-5" style="color: rgb(196, 196, 196);">E-commerce and online marketplace.</p>
            <div class="jhhh">
              <a href="" class="text-decoration-none  text-success">View Jobs <span class="fs-5 ms-2"><i
                    class="fa-solid fa-arrow-right"></i></span></a>
            </div>
          </div>

          <div class="card" style="background-color:rgba(30, 40, 54, 0.909);">
            <img src="imgs/lic.webp" class="ms-0 mb-5 mt-2 zomato" alt="Image 1">
            <h3 class="text-start text-light p-2 fs-4">LIC India</h3>
            <p class="text-start ms-2 fs-5" style="color: rgb(196, 196, 196);">Life insurance & shopping marketplace.
            </p>
            <div class="jhhh">
              <a href="" class="text-decoration-none  text-success">View Jobs <span class="fs-5 ms-2"><i
                    class="fa-solid fa-arrow-right"></i></span></a>
            </div>
          </div>

          <div class="card" style="background-color:rgba(30, 40, 54, 0.909);">
            <img src="imgs/reliance-jio.webp" class="ms-0 mb-5 mt-2 zomato" alt="Image 1">
            <h3 class="text-start text-light p-2 fs-4">JIO</h3>
            <p class="text-start ms-2 fs-5" style="color: rgb(196, 196, 196);">Telecommmunication & digital Services.
            </p>
            <div class="jhhh">
              <a href="" class="text-decoration-none  text-success">View Jobs <span class="fs-5 ms-2"><i
                    class="fa-solid fa-arrow-right"></i></span></a>
            </div>
          </div>

          <div class="card" style="background-color:rgba(30, 40, 54, 0.909);">
            <img src="imgs/sbi-life.webp" class="ms-0 mb-5 mt-2 zomato" alt="Image 1">
            <h3 class="text-start text-light p-2 fs-4">SBI LIFE Insurance Company</h3>
            <p class="text-start ms-2 fs-5" style="color: rgb(196, 196, 196);">Life insuranceand financial services.</p>
            <div class="jhhh">
              <a href="" class="text-decoration-none  text-success">View Jobs <span class="fs-5 ms-2"><i
                    class="fa-solid fa-arrow-right"></i></span></a>
            </div>
          </div>

          <div class="card" style="background-color:rgba(30, 40, 54, 0.909);">
            <img src="imgs/blu-smart.webp" class="ms-0 mb-5 mt-2 zomato" alt="Image 1">
            <h3 class="text-start text-light p-2 fs-4">BLU Smart Mobility</h3>
            <p class="text-start ms-2 fs-5" style="color: rgb(196, 196, 196);">Electric vehicle & Mobility Services.</p>
            <div class="jhhh">
              <a href="" class="text-decoration-none  text-success">View Jobs <span class="fs-5 ms-2"><i
                    class="fa-solid fa-arrow-right"></i></span></a>
            </div>
          </div>

          <div class="card" style="background-color:rgba(30, 40, 54, 0.909);">
            <img src="imgs/hdfc.webp" class="ms-0 mb-5 mt-2 zomato" alt="Image 1">
            <h3 class="text-start text-light p-2 fs-4">HDFC Life Insurance Company</h3>
            <p class="text-start ms-2 fs-5" style="color: rgb(196, 196, 196);">Life insurance and financial services.
            </p>
            <div class="jhhh">
              <a href="" class="text-decoration-none  text-success">View Jobs <span class="fs-5 ms-2"><i
                    class="fa-solid fa-arrow-right"></i></span></a>
            </div>
          </div>
        </div>

        <!-- Navigation buttons -->
        <div class="navigation">
          <button id="prevBtn">&#10094;</button>
          <button id="nextBtn">&#10095;</button>
        </div>
      </div>
    </div>
  </section>

  <section class="container-fluid  mt-5 py-3">
    <h1 class="text-center text-white  fw-bold fs-1 mb-5">Trending job roles on Itap</h1>
    <div class="slider">
      <div class="slide-track gap-4">

        <div class="slide d-flex">
          <div><img src="imgs/1.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6 class="op">Digital market</h6>
            <p class="ops">540 openings</p>
          </div>
        </div>

        <div class="slide d-flex">
          <div><img src="imgs/2.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6 class="op">Bank Office</h6>
            <p class="ops">637 openings</p>
          </div>
        </div>

        <div class="slide d-flex">
          <div><img src="imgs/14.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6 class="op">Painter</h6>
            <p class="ops">5 openings</p>
          </div>
        </div>

        <div class="slide d-flex">
          <div><img src="imgs/15.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6 class="op">Nurse</h6>
            <p class="ops">250 openings</p>
          </div>
        </div>


        <div class="slide d-flex">
          <div><img src="imgs/16.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6 class="op">logistics</h6>
            <p class="ops">250 openings</p>
          </div>
        </div>


        <div class="slide d-flex">
          <div><img src="imgs/17.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>Human Resource</h6>
            <p class="ops">250 openings</p>
          </div>
        </div>


        <div class="slide d-flex">
          <div><img src="imgs/1.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>Draughtsman</h6>
            <p class="ops">100 openings</p>
          </div>
        </div>


        <div class="slide d-flex">
          <div><img src="imgs/18.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>Web Devloper</h6>
            <p class="ops">4000 openings</p>
          </div>
        </div>


        <div class="slide d-flex">
          <div><img src="imgs/19.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>Interior Designer</h6>
            <p class="ops">540 openings</p>
          </div>
        </div>

        <div class="slide d-flex">
          <div><img src="imgs/20.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>Cook/Safe</h6>
            <p class="ops">700 openings</p>
          </div>
        </div>

        <div class="slide d-flex">
          <div><img src="v21.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>Delivery Person</h6>
            <p class="ops">950 openings</p>
          </div>
        </div>

        <div class="slide d-flex">
          <div><img src="imgs/22.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>Doctor</h6>
            <p class="ops">1000 openings</p>
          </div>
        </div>


        <div class="slide d-flex">
          <div><img src="imgs/23.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>Legal</h6>
            <p class="ops">200 openings</p>
          </div>
        </div>


        <div class="slide d-flex">
          <div><img src="imgs/1.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>Mobile Technician</h6>
            <p class="ops">7 openings</p>
          </div>
        </div>


        <div class="slide d-flex">
          <div><img src="imgs/24.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>Security Guard</h6>
            <p class="ops">400 openings</p>
          </div>
        </div>


        <div class="slide d-flex">
          <div><img src="imgs/1.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>Hardware</h6>
            <p class="ops">250 openings</p>
          </div>
        </div>



      </div>
    </div>
  </section>

  <section class="container-fluid slido">
    <div class="slider">
      <div class="slide-track gap-4 lklk">

        <div class="slide d-flex">
          <div><img src="imgs/1.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>Digital market</h6>
            <p class="ops">540 openings</p>
          </div>
        </div>

        <div class="slide d-flex">
          <div><img src="imgs/2.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>Bank Office</h6>
            <p class="ops">637 openings</p>
          </div>
        </div>

        <div class="slide d-flex">
          <div><img src="imgs/4.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>Account/Finance</h6>
            <p class="ops">3550 openings</p>
          </div>
        </div>

        <div class="slide d-flex">
          <div><img src="imgs/5.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>Business Operation</h6>
            <p class="ops">750 openings</p>
          </div>
        </div>


        <div class="slide d-flex">
          <div><img src="imgs/6.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>Graphic Designer</h6>
            <p class="ops">1250 openings</p>
          </div>
        </div>


        <div class="slide d-flex">
          <div><img src="imgs/7.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>Security Guuard</h6>
            <p class="ops">150 openings</p>
          </div>
        </div>


        <div class="slide d-flex">
          <div><img src="imgs/8.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>Marketing</h6>
            <p class="ops">250 openings</p>
          </div>
        </div>


        <div class="slide d-flex">
          <div><img src="imgs/3.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>House Keeping</h6>
            <p class="ops">250 openings</p>
          </div>
        </div>


        <div class="slide d-flex">
          <div><img src="imgs/9.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>It Support</h6>
            <p class="ops">140 openings</p>
          </div>
        </div>

        <div class="slide d-flex">
          <div><img src="imgs/1.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>Macheninacl Enginner</h6>
            <p class="ops">50 openings</p>
          </div>
        </div>

        <div class="slide d-flex">
          <div><img src="imgs/3.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>House Keeping</h6>
            <p class="ops">250 openings</p>
          </div>
        </div>

        <div class="slide d-flex">
          <div><img src="imgs/10.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>Driver</h6>
            <p class="ops">250 openings</p>
          </div>
        </div>


        <div class="slide d-flex">
          <div><img src="imgs/1.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>Tool & Maker</h6>
            <p class="ops">250 openings</p>
          </div>
        </div>


        <div class="slide d-flex">
          <div><img src="imgs/11.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>Field Sales</h6>
            <p class="ops">550 openings</p>
          </div>
        </div>


        <div class="slide d-flex">
          <div><img src="imgs/12.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>Content Writing</h6>
            <p class="ops">250 openings</p>
          </div>
        </div>


        <div class="slide d-flex">
          <div><img src="imgs/13.svg" alt="CPU"></div>
          <div class="ms-4 mt-2">
            <h6>Teacher</h6>
            <p class="ops">250 openings</p>
          </div>
        </div>



      </div>
    </div>
  </section>

  <section class="container-fluid py-5" id="job-post">
    <div class="container">
      <div class="row borderk pt-3 ">
        <div class="col-lg-6 col-sm-12 ppp" data-aos="fade-right"></div>
        <div class="col-lg-6 col-sm-12 ">
          <h4 class="mt-5 ms-4  text-success" data-aos="fade-left">ITAP FOR EMPLOYERS</h4>
          <h3 class=" text-success ms-2 mt-5 wer" data-aos="fade-left">Want To hire ?</h3>
          <p class="text-light ms-2" data-aos="fade-left">Find the best candidate from 1 crore+ active job seekers!</p>
          <div class="logw"><a href="JobPost.jsp">Post Job <i class="fa-solid fa-arrow-right"></i> </a></div>
        </div>
      </div>
    </div>
  </section>


  <footer class="container-fluid py-5 bg-dangers">
    <div class="container mb-4 ps-5 aa">
      <h6 class=" text-light">Find Jobs</h6>
        <div class="row row-cols-lg-3 row-cols-sm-6 d-flex ">
          <div class="col mt-4">
            <p class="mb"><a href="">Jobs in Agra</a></p>
            <p class="mb"><a href="">Jobs in Ajmer</a></p>
            <p class="mb"><a href="">Jobs in Asansol</a></p>
            <p class="mb"><a href="">Jobs in Belagavi</a></p>
          </div>
          <div class="col">
            <p class="mb mt-4"><a href="">Jobs in Ahmedabad</a></p>
            <p class="mb"><a href="">Jobs in Aligarh</a></p>
            <p class="mb"><a href="">Jobs in Aurangabad</a></p>
            <p class="mb"><a href="">Jobs in Bengaluru</a></p>
          </div>
          <div class="col">
            <p class="mb mt-4"><a href="">Jobs in Ahmednagar</a></p>
            <p class="mb"><a href="">Jobs in Amritsar</a></p>
            <p class="mb"><a href="">Jobs in Bareilly</a></p>
            <p class="mb"><a href="">Jobs in Bhavnagar</a></p>
          </div>
       
      </div>
      <hr class="bg-light mt-5 ">
    </div>

    <div class="container mb-4 ps-5 aa">
      <h6 class=" text-light">Start hiring</h6>
        <div class="row row-cols-lg-3 row-cols-sm-6 d-flex">
          <div class="col mt-4">
            <p class="mb"><a href="">Hire in Agra</a></p>
            <p class="mb"><a href="">Hire in Ajmer</a></p>
            <p class="mb"><a href="">Hire in Asansol</a></p>
            <p class="mb"><a href="">Hire in Belagavi</a></p>
          </div>
          <div class="col">
            <p class="mb mt-4"><a href="">Hire in Ahmedabad</a></p>
            <p class="mb"><a href="">Hire in Aligarh</a></p>
            <p class="mb"><a href="">Hire in Aurangabad</a></p>
            <p class="mb"><a href="">Hire in Bengaluru</a></p>
          </div>
          <div class="col">
            <p class="mb mt-4"><a href="">Hire in Ahmednagar</a></p>
            <p class="mb"><a href="">Hire in Amritsar</a></p>
            <p class="mb"><a href="">Hire in Bareilly</a></p>
            <p class="mb"><a href="">Hire in Bhavnagar</a></p>
          </div>
       
      </div>
      <hr class="bg-light mt-5 ">
    </div>
  </footer>

  <footer class="container-fluid foot">
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
            <p><a href="Carrer.jsp" class="text-light" style="text-decoration: none;">Careers</a></p>
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
            <h5 class="text-uppercase mb-4 font-weight-bold text-warning">  Contact</h5>
            <p class="text-light"><i class="fas fa-home mr-3 text-light"></i>  Greater Noida,Uttar Pradesh</p>
            <p class="text-light"><i class="fas fa-phone mr-3 text-light"></i>  9651488774</p>
            <p class="text-light"><i class="fas fa-envelope mr-3 text-light"></i>  support@itap.com</p>
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





   <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    
    <script>
     AOS.init();
    </script>


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>


</body>

</html>
<% }%>