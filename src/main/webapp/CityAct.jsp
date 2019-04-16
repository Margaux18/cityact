<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html class="ink">
<head>
<title>CityAct / Barre de navigation</title>

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

<link rel="stylesheet" type="text/css" href="css/css_navbar.css">
<link rel="stylesheet" type="text/css" href="css/css_login.css">

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
</head>

<body>
	<nav class="navbar fixed-top navbar-expand-sm ">
		<div class="container-fluid">

			<div id="left" class="col-sm-3">
				<!-- brand -->
				<div class="navbar-header">
					<a class="navbar-brand"
						href="C:/Users/IN-ST-004/eclipse-workspace/UrbanProject/src/main/webapp/pictures/CityAct.jpg">
						<img src="pictures/CityAct.jpg" width="30" height="30"
						class="d-inline-block align-top mr-4" alt="Logo CityAct">CityAct
					</a>

				</div>

			</div>

			<div id="center" class="col-sm-6">
				<!-- 				Links <ul class="navbar-nav justify-content-center"> -->
				<ul class="navbar-nav nav-fill">
					<li class="nav-item"><a class="nav-link" href="accueil.jsp"><i
							class="fas fa-home fa-2x mr-2"></i>Accueil</a>
					<li class="nav-item"><a class="nav-link"
						href="Qui_sommes_nous.jsp"><i class="fas fa-users fa-2x mr-2">
						</i>Qui sommes-nous?</a><span class="sr-only">(current)</span></li>

					<li class="nav-item"><a class="nav-link" href="#"><i
							class="fas fa-map-marked-alt fa-2x mr-2 "></i> Carte</a><span
						class="sr-only">(current)</span></li>

					<li class="nav-item"><a class="nav-link" href="#"><i
							class="far fa-question-circle fa-2x mr-2 "></i>FAQ</a> <span
						class="sr-only">(current)</span></li>

				</ul>
			</div>

			<div id="right" class="col-sm-3">

				<ul class="navbar-nav justify-content-end ">


					<li class="nav-item"><a class="nav-link" href="signup.jsp"><span
							class="glyphicon glyphicon-user"></span> <i
							class="fas fa-user-edit fa-2x mr-1.5"></i> Sign Up</a></li>

					<li class="nav-item dropdown "><a
						class="nav-link dropdown-toggle" href="#" id="navbardrop"
						data-toggle="dropdown"><i class="fas fa-sign-in-alt fa-2x mr-1"></i>
							Login</a>

						<div class="dropdown-menu dropdown-menu-right p-2" style="width:15em;">

							<form id="form" action="/action_page.php">
						
								<div class="form-group">
									<label for="pseudo">Identifiant:</label><input type="text"	class="form-control" id="pseudo">
								</div>
								
								
								<div class="form-group">
									<label for="pwd">Mot de passe:</label> <input type="password"
										class="form-control" id="pwd">
								</div>
								<div class="checkbox">
									<label><input type="checkbox">Se souvenir de moi</label>
								</div>
								<div  id="b1"  class="form-group"> <button type="submit" class="btn btn-default">Submit</button>
							</div>
							</form>
						</div></li>
				</ul>
				
			</div>
		</div>

	</nav>

</body>
</html>