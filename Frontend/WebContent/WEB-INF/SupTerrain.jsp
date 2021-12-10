<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Supprimer des terrains</title>
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="css/bootstrap-grid.css" rel="stylesheet" type="text/css" />
	<link href="js/bootstrap.js" rel="stylesheet" type="text/js" />
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<link rel="icon" type="image/png" sizes="16x16" href="wire/logo2.png">
</head>

<body>
		<header>    
            <div class="row justify-content-between vw-100">
                 <div class ="col-3 align-self-center "><a href="Index"><img src="wire/logo4.png" alt="logo Terrain Facile"></a></div>
                 
                 <div class="col-3 align-self-center" style="text-align: end;">
                     <c:if test="${!empty sessionScope.login}">
						Bienvenue ${sessionScope.login}
						<c:if test="${sessionScope.login == 'admin'}">
							<a class="btn btn-danger" href="Supprimer">Supprimer des terrains</a>
                     	</c:if>
						<a class="btn btn-success linkCompte" href="Deconnexion">Se déconnecter</a>
					</c:if>
		
					<c:if test="${empty sessionScope.login}">
					<a class="" href="Connexion">Se connecter</a>
                     <a class="btn btn-success linkCompte" href="Inscription">Inscrivez-vous</a>
                     </c:if>
                 </div>
            </div> 
    	</header>
    

<form action="Supprimer" method="post">

<br>
<div class="form-group mx-sm-3 mb-2">
    <input type="text" name="ids" class="form-control" id="ids" placeholder="ID à supprimer">
  </div>

 <div class="text-center">
<button type="submit" class="btn btn-secondary btn-sm center-block">Supprimer</button>
 </div>
 
<br>


</form>


<c:forEach items="${res }" var="ter">

<a href="#" class="list-group-item list-group-item-action flex-column align-items-start active">
    <div class="d-flex w-100 justify-content-between">
      <h5 class="mb-1">ID: ${ter.id} | ${ter.nom}</h5>
    </div>
    <p class="mb-1">${ter.surface} m² et ${ter.prix} euros</</p>
    
  </a>
</c:forEach>

<footer>
    	<div class="row">
        	<div class="col" style="text-align: center">
            	<a class="linkFooter" href="Contact">Nous contacter</a>
        	</div>
    	</div>
   </footer>
</body>
</html>