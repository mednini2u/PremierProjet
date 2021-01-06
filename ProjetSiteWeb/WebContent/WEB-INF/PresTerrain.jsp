<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>   

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Présentation des terrains</title>
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="css/bootstrap-grid.css" rel="stylesheet" type="text/css" />
	<link href="js/bootstrap.js" rel="stylesheet" type="text/js" />
	<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<header>    
    
            <div class="row justify-content-between" style="width : 100%">
                 <div class ="col-3 align-self-center "><a>
     
				</a></div>
                 <div class ="col-6 align-self-center " style ="">
                     <ul>
                     
                     <li><a href="/ProjetSiteWeb/PresTerrain">Terrain</a></li>
                     <li class="traitHead"></li>
                     
                     
                     </ul>
                 </div>
                 <div class="col-3 align-self-center " style="text-align: end;">
                    
                     
                     <c:if test="${!empty sessionScope.login}">
                     
						Bienvenue ${sessionScope.login}
						<a href="/ProjetSiteWeb/Deconnexion">se déconnecter</a>
					</c:if>
					<c:if test="${empty sessionScope.login}">
					<a href="/ProjetSiteWeb/Connexion">Se connecter</a>
                     <button class="btn btn-success linkCompte">Inscrivez-vous</button>
                     </c:if>
                 </div>
            </div>
            
            
        
    </header>
    


<form action="PresTerrain" method="post">
<c:if test = "${sessionScope.login == 'admin'}">
<div class="form-group mx-sm-3 mb-2">
    <label for="exampleInputEmail1">Identifiant</label>
    <input type="text" name="ida" class="form-control" id="ida" placeholder="ID">
  </div>
<div class="form-row">
    <div class="col">
      <input type="text" name="noma" id="noma" class="form-control" placeholder="Nom">
    </div>
    <div class="col">
      <input type="text" name="prixa" id="prixa" class="form-control" placeholder="Prix">
    </div>
    <div class="col">
      <input type="text" name="surfacea" id="surfacea" class="form-control" placeholder="Surface">
    </div>
  </div>
	<br>
 	<div class="text-center">
	<button type="submit" class="btn btn-secondary btn-sm center-block">Ajouter un terrain</button>
 	</div>
         
	</form>
</c:if>

<br>
<c:if test="${!empty sessionScope.login}">
	<a>Voici les terrains disponibles ${sessionScope.login}</a>
	<table class="table">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Nom</th>
      <th scope="col">Prix</th>
      <th scope="col">Surface</th>
    </tr>
  </thead>
 <c:forEach items="${res }" var="ter">
  <tbody>
    <tr>
      <th scope="row">${ter.id}</th>
      <td>${ter.nom}</td>
      <td>${ter.prix}</td>
       <td>${ter.surface}</td>
    </tr>
  </tbody>
  </c:forEach>
</table>
<br>


</c:if>

<c:if test="${empty sessionScope.login}">
	Vous devez vous connectez pour accedez aux terrains!
</c:if>



</body>
</html>