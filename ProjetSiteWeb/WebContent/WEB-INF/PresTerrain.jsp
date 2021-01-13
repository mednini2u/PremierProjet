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
    		  <header>    
            <div class="row justify-content-between vw-100">
                 <div class ="col-3 align-self-center "><a href="/ProjetSiteWeb/Index"><img src="wire/logo4.png" alt="logo Terrain Facile"></a></div>
                 
                 <div class="col-3 align-self-center" style="text-align: end;">
                     <c:if test="${!empty sessionScope.login}">
						Bienvenue ${sessionScope.login}
						<a class="btn btn-success linkCompte" href="/ProjetSiteWeb/Deconnexion">Se déconnecter</a>
					</c:if>
					
					<c:if test="${empty sessionScope.login}">
					<a class="" href="/ProjetSiteWeb/Connexion">Se connecter</a>
                     <a class="btn btn-success linkCompte" href="/ProjetSiteWeb/Inscription">Inscrivez-vous</a>
                     </c:if>
                 </div>
            </div> 
    </header>
            
            
        
    </header>
    

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