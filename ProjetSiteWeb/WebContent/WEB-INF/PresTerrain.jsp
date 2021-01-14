<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>   


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Présentation des terrains</title>
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="css/bootstrap-grid.css" rel="stylesheet" type="text/css" />
	<link href="js/bootstrap.js" rel="stylesheet" type="text/js" />
	<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<header>    
            <div class="row justify-content-between vw-100">
                 <div class ="col-3 align-self-center "><a href="/ProjetSiteWeb/Index"><img src="wire/logo4.png" alt="logo Terrain Facile"></a></div>
                 
                 <div class="col-3 align-self-center " style="text-align: end;">
                     <c:if test="${!empty sessionScope.login}">
						Bienvenue ${sessionScope.login}
						<a class="btn btn-success linkCompte" href="/ProjetSiteWeb/Deconnexion">Se déconnecter</a>
					</c:if>
					
					<c:if test="${empty sessionScope.login}">
					<a href="/ProjetSiteWeb/Connexion">Se connecter</a>
                     <a class="btn btn-success linkCompte" href="/ProjetSiteWeb/Inscription">Inscrivez-vous</a>
                     </c:if>
                 </div>
            </div> 
    </header>
    

<br>
<c:if test="${!empty sessionScope.login}">
<!--  
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

-->
<div class="row bloctitreRecherches"><span class="titreRecherche">Trouvez le terrain de vos rêves </span></div>
  <c:forEach items="${res }" var="ter">
    
    <div class="row justify-content-around elementRecherche" style="height : 150px;">            
            <div class="col">
              <div class="titreTerrain">${ter.nom}</div>
              <div class="caracteristiquesTerrain">Prix : ${ter.prix}</div>    
              <div class="caracteristiquesTerrain">Surface : ${ter.surface}</div>
            </div>
        	  <div class="col-4 align-self-center" style="border-radius: 0px;"><img style="border-radius: 15px;" src="img/Terrains/terrain1.jpg" alt="photo du terrain"/></div> <!-- 100px de haut pour les photos--> 
    </div>
  </c:forEach>  
<br>

</c:if>

<c:if test="${empty sessionScope.login}">
	Vous devez vous connectez pour accedez aux terrains!
</c:if>



</body>
</html>