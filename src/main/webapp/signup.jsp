<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html class="ink">
<head>
<title>Sign Up | Inscription </title>
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

<link href="<c:url value="/resources/css/css_signup.css" />" rel="stylesheet">
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

<br>
<br>
<br>
<section id="singup">
  <div id="container" class="container">
            <div class="row">

<form class="needs-validation" novalidate>
<!--   <div class="form-row"> -->
<!--     <div class="col-md-6 mb-3"> -->

<br>
    <div class="col-md-auto mb-3 ">
      <label for="validationCustom01">Prénom</label>
      <input type="text" class="form-control" id="validationCustom01" placeholder="First name" value="Prénom" required>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-auto mb-3  ">
      <label for="validationCustom02">Nom</label>
      <input type="text" class="form-control" id="validationCustom02" placeholder="Last name" value="Nom de famille" required>
      <div class="valid-feedback">
        Looks good!
      </div>
      
    </div>
    <div class="col-md-auto  mb-3 ">
      <label for="validationCustomEmail">Email</label>
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text" id="inputGroupPrepend">@</span>
        </div>
        <input type="email" class="form-control" id="validationCustomEmail" placeholder="Email" aria-describedby="inputGroupPrepend" required>
        <div class="invalid-feedback">
          Veuillez entrer une adresse mail valide.
        </div>
      </div>
    </div>
<!--   </div> -->
  
<!--   <div class="form-row"> -->
    <div class="col-md-auto mb-3">
      <label for="validationCustom03">Pseudo</label>
      <input type="text" class="form-control" id="validationCustom03" placeholder="Pseudo" required>
      <div class="invalid-feedback">
        Veuillez indiquer un nom d'utilisateur valide.
      </div>
    </div>
<!--   </div> -->
  
 
    <div class="col-md-auto mb-3  ">
      <label for="validationCustom04">Ville</label>
      <input type="text" class="form-control" id="validationCustom04" placeholder="Ville" required>
      <div class="invalid-feedback">
        Veuillez indiquer une ville valide.
      </div>
    </div>
    
    
    <div class="col-md-auto mb-3  ">
      <label for="validationCustom05">Code postal</label>
      <input type="text" class="form-control" id="validationCustom05" placeholder="Code postal" required>
      <div class="invalid-feedback">
        Veuillez fournir un code postal valide.
      </div>
    </div>
    
   
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
      <label class="form-check-label" for="invalidCheck">
        Accepter les termes et conditions
      </label>
      <div class="invalid-feedback">
        Vous devez donner votre accord avant de soumettre votre demande.
      </div>
    </div>
  </div>
   <div class="text-right">
  <button class="btn btn-primary" type="submit">Soumettre le formulaire </button>
  <br></div>
</form>


   <div id="img" class="text-right" title="Icon made by Freepik from flaticon licensed by Creative Commons BY 3.0" > <br> 
   <img class="img-fluid" src="<c:url value="resources/pictures/clipboard.jpg" />"/>

<br>
</div>
</div>
</div>
  

</section>


</html>