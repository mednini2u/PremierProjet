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

<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link" href="dao">Ajouter des �tudiants</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="daoRech">Rechercher des �tudiants</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="daoSup">Supprimer des �tudiants</a>
  </li>
  <li class="nav-item">
    <a class="nav-link active" href="daoModif">Modifier des �tudiants</a>
  </li>
</ul>

<form action="ControllerModif" method="post">


<div class="form-group mx-sm-3 mb-2">
    <label for="exampleInputEmail1">ID � modifier</label>
    <input type="text" name="idm" class="form-control" id="idm" placeholder="ID">
  </div>
<br>


  <div class="form-row">
    <div class="col">
      <input type="text" name="nomm" id="nomm" class="form-control" placeholder="Nom">
    </div>
    <div class="col">
      <input type="text" name="prenomm" id="prenomm" class="form-control" placeholder="Pr�nom">
    </div>
  </div>
<br>

<div class="text-center">
<button type="submit" class="btn btn-secondary btn-sm center-block">Modifier</button>
 </div>
 <br>
</form>

<table class="table">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Nom</th>
      <th scope="col">Pr�nom</th>
    </tr>
  </thead>
 <c:forEach items="${res}" var="etud">
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

</body>
</html>