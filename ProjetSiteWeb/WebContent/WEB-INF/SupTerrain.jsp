<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>   

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Présentation des terrains</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>

<form action="ControllerSup" method="post">

<br>
<div class="form-group mx-sm-3 mb-2">
    <input type="text" name="idsup" class="form-control" id="idsup" placeholder="ID à supprimer">
  </div>

 <div class="text-center">
<button type="submit" class="btn btn-secondary btn-sm center-block">Supprimer</button>
 </div>
 
<br>


</form>

<c:out value="---Base de données---"></c:out>
<c:forEach items="${res }" var="ter">

<a href="#" class="list-group-item list-group-item-action flex-column align-items-start active">
    <div class="d-flex w-100 justify-content-between">
      <h5 class="mb-1">${ter.nom}</h5>
    </div>
    <p class="mb-1">${ter.surface} m² et ${ter.prix} euros</</p>
    
  </a>
	


	<c:out value="${ter.id} : "></c:out>
	<c:out value="${ter.nom}"></c:out> <br>
	<c:out value="Surface : ${ter.surface} m²"></c:out> 
	<c:out value="Prix : ${ter.prix} euros"></c:out> 
	

</c:forEach>


</body>
</html>