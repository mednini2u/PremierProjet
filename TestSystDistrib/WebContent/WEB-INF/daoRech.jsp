<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>   

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Liste �tudiants</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div class="text-center">
<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link" href="dao">Ajouter des �tudiants</a>
  </li>
  <li class="nav-item">
    <a class="nav-link active" href="daoRech">Rechercher des �tudiants</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="daoSup">Supprimer des �tudiants</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="daoModif">Modifier des �tudiants</a>
  </li>
</ul>
</div>
<form action="ControllerRech" method="post">

<br>
<div class="form-group mx-sm-3 mb-2">
    <input type="text" name="nameRe" class="form-control" id="nameRe" placeholder="Nom ou pr�nom d'un �tudiant">
  </div>


 <div class="text-center">
<button type="submit" class="btn btn-secondary btn-sm center-block">Rechercher</button>
 </div>
<br>


</form>



<table class="table">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Non</th>
      <th scope="col">Pr�nom</th>
    </tr>
  </thead>
 <c:forEach items="${res }" var="etud">
  <tbody>
    <tr>
      <th scope="row">${etud.identifiant}</th>
      <td>${etud.nom}</td>
      <td>${etud.prenom}</td>
    </tr>
  </tbody>
  </c:forEach>
</table>
<br>

<br>



</body>
</html>