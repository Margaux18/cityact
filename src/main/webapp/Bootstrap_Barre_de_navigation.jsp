<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html class="ink">
<head>
<title>Bootstrap/ Barre de navigation</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">


<link rel="stylesheet" type="text/css" href="css_navbar.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

 <link rel="stylesheet" type="text/css" href="css/css_navbar.css">
 
</head>


<body>

	<nav class="navbar navbar-expand-sm">

		<div class="container-fluid">
<!-- 			<div class="row"> -->
					<!-- Brand -->
					<a class="navbar-brand "
						href="C:/Users/IN-ST-004/eclipse-workspace/UrbanProject/src/main/webapp/pictures/CityAct.jpg">
						<img src="pictures/CityAct.jpg" width="30" height="30"
						class="d-inline-block align-top" alt=" ">CityAct
					</a>

					<!-- Links -->
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" href="#"><i
								class="fas fa-home  "></i>Accueil</a><span class="sr-only">(current)</span>
						</li>
					</ul>

				</div>

				<div class="container-fluid">
					<ul class="navbar-nav">
					
						<li class="nav-item"><a class="nav-link" href="Qui_sommes_nous.jsp"><i class="fas fa-users ">
						</i>Qui sommes-nous?</a><span class="sr-only">(current)</span>
								</li>
			
						<li class="nav-item"><a class="nav-link" href="Qui_sommes_nous.jsp"><i class="fas fa-map-marked-alt "></i>
						Carte</a><span class="sr-only">(current)</span></li>
						
						<li class="nav-item"><a class="nav-link" href="#"><i
								class="far fa-question-circle  "></i>FAQ</a> <span class="sr-only">(current)</span></li>
								
							</ul>
			</div>
			
		<div class="container">
					<ul class="navbar-nav">
						<!-- Dropdown -->
						<li class="nav-item"><a class="nav-link" href="#" ><i class="fas fa-bell"></i>Mes alertes</a><span class="sr-only">(current)</span></li>
						<li class="nav-item dropdown "><a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown"><i class="fas fa-user"></i>Pseudo</a>
							
							<div class="dropdown-menu dropdown-menu-right">
								<a class="dropdown-item" href="#">Mon profil</a> 
								<a class="dropdown-item" href="#">Modifier mon compte</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#"><i
									class="fas fa-sign-out-alt"></i> Log out</a>
							</div></li>
					</ul>
					</div>
<!-- 					</div> fin div row -->
			</nav>
</body>

</html>