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
	<link href="<%=request.getContextPath()%>/css/style.css?version=1" rel="stylesheet" type="text/css"/>
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
    

<c:if test="${!empty sessionScope.login}">

	<div class="row bloctitreRecherches"><span class="titreRecherche">Trouvez le terrain de vos rêves </span></div>
	
  		<c:forEach items="${res }" var="ter">
    	<div class="row justify-content-around elementRecherche" style="height : 150px;">            
           <div class="col">
              <div class="titreTerrain">${ter.nom}</div>
              <div class="caracteristiquesTerrain">Prix : ${ter.prix}€/jour</div>    
              <div class="caracteristiquesTerrain">Surface : ${ter.surface} m²</div>
           </div>
           <div class="col-4 align-self-center"><img style="border-radius: 15px;" src="img/Terrains/terrain1.jpg" alt="photo du terrain"/></div> <!-- 100px de haut pour les photos--> 
    	</div>
  		</c:forEach>  
</c:if>

<c:if test="${empty sessionScope.login}">
	
	<div class="container">
		
		<div class="row bloctitreRecherches" style="width:600px ;"><span class="titreRecherche">Oops...</span></div>

		<div class="row">
			<div class="col" style="text-align:center;">
				<p>Il faut que vous soyez connecté pour visualiser les terrains du site !</p>
				<p>Si vous avez déjà un compte, vous pouvez vous connecter en cliquant sur ce lien : 
				<a href="Connexion">Se connecter</a></p>
				<p>Sinon, vous pouvez en créer un en cliquant sur ce lien :
				<a href="Inscription">S'inscrire</a></p>
			</div>
		</div>
	</div>
</c:if>

    <div class="espaceFooter"></div>  <!--bloc qui permet d'obtenir un espace entre le haut de page et le début du contenu, il fait la taille du header-->

	<footer>
    	<div class="row">
        	<div class="col" style="text-align: center">
            	<a class="linkFooter" href="Contact">Nous contacter</a>
        	</div>
    	</div>
   </footer>
</body>
</html>