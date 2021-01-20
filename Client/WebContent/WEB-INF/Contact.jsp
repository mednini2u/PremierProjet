<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact</title>
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

<div class="row bloctitreRecherches" style="width: 500px"><span class="titreRecherche" style="width: 500px">Nous contacter :</span></div>

<div class="container" style="width: 900px">
	<div class="row">
		<div class="col" style="text-align: justify">
		<br>
		Bienvenue sur Le Terrain Facile ! Nous sommes une équipe de deux jeunes ingénieurs en développement web et nous avons décidé de créer une plateforme de location de terrain, afin de faciliter la recherche de ces derniers. Vous pouvez nous contacter par mail : 
		<br><br>
		<span style="margin:0 0 0 50px">- theo.michels3@etu.univ-lorraine.fr</span>
		<br>
		<span style="margin:0 0 0 50px">-soufyen.mednini6@etu.univ-lorraine.fr</span>
		<br><br>
		Vous pouvez également nous retrouver sur nos profils Github afin de découvrir nos autres projets :
		<br><br>
		<span style="margin:0 0 0 50px">- https://github.com/TheoMichels</span>
		<br>
		<span style="margin:0 0 0 50px">- https://github.com/mednini2u</span>
		<br><br>
		</div>
	</div>
	<div class="row">
		<div class="col">
			Vous pouvez également nous trouver à notre centre de recherche situé à Polytech Nancy :
			<br><br>
		</div>
	</div>
	<div class="row">
		<div class="col" style="text-align: center;">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2635.3922504082834!2d6.186126216261252!3d48.65974062262607!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x479498ec85b7dcc1%3A0x37be5c98aae2e926!2sPolytech%20Nancy!5e0!3m2!1sfr!2sfr!4v1611137381418!5m2!1sfr!2sfr" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
		</div>
	</div>	
</div>

<footer>
    	<div class="row">
        	<div class="col" style="text-align: center">
            	<a class="linkFooter" href="Contact">Nous contacter</a>
        	</div>
    	</div>
   </footer>
</body>
</html>