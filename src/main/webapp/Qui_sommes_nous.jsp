<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html class="ink">
<head>
<title>CityAct | Qui sommes nous ?</title>
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



<link rel="stylesheet" type="text/css" href="css/quisommesnous_css.css">
<!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" -->
<!-- 	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" -->
<!-- 	crossorigin="anonymous"></script> -->
<!-- <script -->
<!-- 	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" -->
<!-- 	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" -->
<!-- 	crossorigin="anonymous"></script> -->
<!-- <script -->
<!-- 	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" -->
<!-- 	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" -->
<!-- 	crossorigin="anonymous"></script> -->
	
	
</head>
<!-- <body> -->
<!-- Connected -->
	<c:if test = "${!empty sessionScope.user}">
<%-- <%@ include file="/CityActConnectNavbar.jsp"%> --%>
<c:import url="/CityActConnectNavbar.jsp"></c:import></c:if>


<!-- Not connected -->
<c:if test="${empty sessionScope.user }">
<%-- <%@ include file="/CityAct.jsp"%> --%>
<c:import url="/CityAct.jsp"></c:import></c:if>
<br>
<br>
<section> 
	<br>
	<h3 id="slogan">CityAct pour une ville qui vous correspond!</h3>
	<p>NOS VALEURS:
	<a>fiabilité, facilité d’exécution,et de lisibilité, inclusion
		sociale dans le processus de décision
	</a>
	</p>
	<div id= "team"> <a > Notre team </a></div>
	
	</section>
<!-- </body> -->
</html>