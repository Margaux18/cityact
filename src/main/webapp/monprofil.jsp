<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html class="ink">
<head>
<title>CityAct | Mon profil</title>
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

<link rel="stylesheet" type="text/css" href="css/css_monprofil.css">
<!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script> -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> -->
</head>
<!-- Connected -->
<%-- <c:if test="${!empty sessionScope.user}"> --%>
	<%-- <%@ include file="/CityActConnectNavbar.jsp"%> --%>
	<c:import url="/CityActConnectNavbar.jsp"></c:import>
<%-- </c:if> --%>




<form>
<div class="form-row">
    <div class="form-group col-sm-6">
      <label for="inputEmail4">Prénom</label>
      <input type="text" class="form-control" id="inputFirstname" placeholder="Prénom">
    </div>
   
    
    <div class="form-group col-sm-6">
      <label for="inputnom">Nom</label>
      <input type="text"class="form-control" id="inputLastname" placeholder="Nom">
    </div>
 </div>

  <div class="form-row">
    <div class="form-group col-sm-6">
      <label for="inputEmail4">Email</label>
      <input type="email" class="form-control" id="inputEmail4" placeholder="Email">
    </div>
    
    <div class="form-group col-sm-6">
      <label for="inputPassword4">Mot de passe</label>
      <input type="password" class="form-control" id="inputPassword4" placeholder="Password">
    </div>
  </div>
  
    <div class="form-group">
    <label for="inputBirthdate">Date de naissance</label>
    <input type="date" class="form-control" id="inputBirthdate" placeholder="dd/mm/yyyy">
  </div>
  
  <div class="form-group">
    <label for="inputAddress">Adresse</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
  </div>
  

  
  <div class="form-row">
    <div class="form-group col-sm-4">
      <label for="inputCity">Ville</label>
      <input type="text" class="form-control" id="inputCity">
    </div>
    <div class="form-group col-sm-4">
      <label for="inputState">Pays</label>
      <select id="inputState" class="form-control">
        <option selected>Choose...</option>
        <option>France</option>
        <option>Belgique</option>
        <option>Suisse</option>
        <option>Andorre</option>
        <option>Principauté de Monaco</option>
        <option>Luxembourg</option>
        <option>Dom-Tom France</option>
      </select>
    </div>
    <div class="form-group col-sm-4">
      <label for="inputCP">Code Postal</label>
      <input type="text" class="form-control" id="inputZip">
    </div>
  </div>

</form>


</html>