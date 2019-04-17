<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html class="ink">
<head>
<title>Accueil</title>
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


<link href="<c:url value="/resources/css/css_accueil.css" />" rel="stylesheet">
<!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script> -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> -->
</head>

<!-- <body> -->

<!-- Connected -->
<c:if test="${!empty sessionScope.user}">
	<%-- <%@ include file="/CityActConnectNavbar.jsp"%> --%>
	<c:import url="/CityActConnectNavbar.jsp"></c:import>
</c:if>


<!-- Not connected -->
<c:if test="${empty sessionScope.user }">
	<%-- <%@ include file="/CityAct.jsp"%> --%>
	<c:import url="/CityAct.jsp"></c:import>
</c:if>



<!-- <section id="strasbourg"> -->
<!-- <img class="irc_mi" -->
<!-- 	src="https://bdaecpm.files.wordpress.com/2015/07/place-kleber.jpg" -->
<!-- 	onload="typeof google==='object'&amp;&amp;google.aft&amp;&amp;google.aft(this)" -->
<!-- 	alt="Image associée" style="margin-top: 0px;" data-iml="1555181527576"> -->
<!-- <!-- 	width="471" height="353" -->
<!-- <!-- <h1 class="cover-heading">CityAct</h1><hr> -->
<!-- <hr> -->
<!-- </section> -->



<!-- Full Page Image Header with Vertically Centered Content -->
<header class="masthead">
  <div class="container h-100 ">
    <div class="row h-100">
      <div class="col-12">
        <button class="btn1" > Accéder au site </button>
      </div>
    </div>
  </div>
<!--         <i class="fa fa-angle-down"></i> -->
</header>

<!-- Page Content -->
<!-- <section class="py-5"> -->
<!--   <div class="container"> -->
<!--     <h2 class="font-weight-light">Page Content</h2> -->
<!--     <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus ab nulla dolorum autem nisi officiis blanditiis voluptatem hic, assumenda aspernatur facere ipsam nemo ratione cumque magnam enim fugiat reprehenderit expedita.</p> -->
<!--   </div> -->
<!-- </section> -->

<section class="py-5"> 
<h1 id="titre">CityAct</h1>
<hr class="pg-titl-bdr-btm">
<br>
<div class="col-sm-12">
<div class="row">
<div class="col-sm-4">
	<h5 id="Pourqui">Pour qui ?</h5>

	<p id="whom">Tout le monde, que vous soyez habitant ou bien usager fréquent
		de cet espace vous êtes invités à partager votre vision de VOTRE
		VILLE! Parce que c'est ensemble que nous la vivons, ce doit être
		ensemble que nous la construisons (ou améliorons).</p>
</div>


<div class="col-sm-4">
	<h5 id="Pourquoi">Pourquoi ?</h5>

	<p id="why">proposition, retour impact reel, communication, parler exp
		perso, democratie, avis citoyens -expertise pour meilleur espace pensé</p>
</div>

<div  class="col-sm-4">
	<h5 id="Comment">Comment ?</h5>

	<p id="how">développer les principes de fonctionnement, ma mise en relation
		citoyens, et ressources techniques et politiques concernnés de la
		ville. Aborder les 3 xcatégories en synthétisant l'objectif de chacune
		d'entre elle.</p>
</div>
</div>
</div>

</section>
</html>