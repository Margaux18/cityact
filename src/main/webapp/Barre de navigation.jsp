
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html class="ink">
<head>
 <title>Barre de navigation _ example Quentin</title>
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">


 <link rel="stylesheet" type="text/css" href="css_navbar.css">
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 </head>
<body>

<c:if test = "${!empty sessionScope.user}">
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark navbar-custom">
   <a class="navbar-brand" href="#"><i class="fab fa-autoprefixer mr-1" ></i>CityAct</a>
   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
       <span class="navbar-toggler-icon"></span>
     </button>
     <div class="collapse navbar-collapse" id="navbarSupportedContent">
   <ul class="navbar-nav mr-auto">
     <li class="nav-item active">
       <a class="nav-link" href="#">
         <i class="fa fa-home"></i>
         Home
         <span class="sr-only">(current)</span>
         </a>
     </li>
     <li class="nav-item">
       <a class="nav-link" href="#">
      <i class="far fa-user"></i>
           Profile
       </a>
     </li>
     <li class="nav-item">
       <a class="nav-link" href="#">
       <i class="far fa-envelope">
           <span class="badge badge-danger">11</span>
         </i>
         Messages
       </a>
     </li>
     <li class="nav-item">
       <a class="nav-link" href="#">
      <i class="fas fa-search"></i>
         Search 
       </a>
     </li>
      <li class="nav-item">
       <a class="nav-link" href="#">
         <i class="fab fa-forumbee"></i>
         Forum
       </a>
     </li>
   </ul>
   <ul class="navbar-nav mr-2">
     <li class="nav-item">
       <a class="nav-link" href="#">
         <i class="fa fa-bell">
           <span class="badge badge-danger">11</span>
         </i>
         Notification
       </a>
     </li>
   </ul>
   <form class="form-inline my-2 my-lg-0 mr-4" action="Servlet_Disconnect" method="POST">
     <button class="btn btn-outline-success my-2 my-sm-0 btn_disconnect" type="submit">Disconnect</button>
   </form>
 </div>
 </nav>  
</c:if>
<c:if test="${empty sessionScope.user }">
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark navbar-custom">
   <a class="navbar-brand" href="#"><i class="fab fa-autoprefixer mr-1" ></i>CityAct</a>
   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
       <span class="navbar-toggler-icon"></span>
     </button>
     <div class="collapse navbar-collapse" id="navbarSupportedContent">
   <ul class="navbar-nav mr-auto">
     <li class="nav-item active">
       <a class="nav-link" href="#">
         <i class="fa fa-home"></i>
         Home
         <span class="sr-only">(current)</span>
         </a>
     </li>

      <li class="nav-item">
       <a class="nav-link" href="#">
         <i class="fab fa-forumbee"></i>
         Forum
       </a>
     </li>
      <li class="nav-item">
       <a class="nav-link" href="#">
         <i class="fas fa-graduation-cap"></i>
         Learn More
       </a>
     </li>
   </ul>
  <c:if test="${inLoginPage != true}">
   <form class="form-inline my-2 my-lg-0" action="Servlet_Login" method="POST">
     <input class="form-control mr-sm-2" type="email" placeholder="E-mail" id ="input_email" name="input_email" aria-label="Email">
     <input class="form-control mr-sm-2" type="password" placeholder="Password" id ="input_password" name="input_password" aria-label="Password">
     <button class="btn btn-outline-success my-2 my-sm-0 btn_login"  type="submit">Log-In</button>
   </form>
   <form class="form-inline my-2 my-lg-0" action="Servlet_Register" method="GET">
     <button class="btn btn-outline-success my-2 my-sm-0 btn_signin ml-2"  type="submit">Sign-In</button>
   </form>
   </c:if>
 </div>
 </nav>  
</c:if>

</body>
</html>

