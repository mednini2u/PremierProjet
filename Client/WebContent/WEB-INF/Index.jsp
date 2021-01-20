<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/style.css" />
	<link rel="icon" type="image/png" sizes="16x16" href="wire/logo2.png">
    <title>Le Terrain Facile</title>
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
	
	<div class="row justify-content-between" style="margin : 50px" >
		<div class="col-xl-4 col-lg-4 col-md-3" style="margin : auto 0;">
			<div class="row justify-content-center" style="margin : 20px auto">
				<div class="accroche">Organisez tout votre évènement, en un seul clic</div>
			</div>
			<div class="row justify-content-center" style="margin : 20px auto">
    			<a class="btn w-50 btn-success lienAnnonce" href="Annonce" style="margin : auto;">Déposer une annonce</a>
    		</div>
    		<div class="row justify-content-center" style="margin : 20px auto">
    			<a class="lienDecouvrir" href="PresTerrain">Découvrir nos terrains</a>
    		</div>
    	</div>
        <div class ="col-xl-4 col-lg-7 col-md-8 col-xs-10 col-12 h-100"><img src="img/photo.jpg" alt="photo de terrain"/></div>
    </div>	

	<div class=trait></div>  <!--bloc permettant de créer un trait horizontal avec une bordure-->

	<div class="row justify-content-around" style="margin : 50px">
        <div class="col-3 align-self-center accroche" >Simplifiez vos recherches</div>      
        <div class="col-4 simplif"> Vous pouvez trouver tout ce dont vous avez besoin, juste ici. Ne naviguez plus entre les sites de locations et de prestataires. Ici, vous avez tout à portée de main.</div>
    </div>

    <div class=trait></div>

    <div class="row justify-content-around" style="margin : 50px">
        <div class="col-5 simplif">En effet, il serait dommage d'enfermer ses invités dans une petite salle à un prix exorbitant. Vous vivez dans un pays comportant une multitude de magnifiques terrains libres, il serait dommage de ne pas en profiter.</div>
        <div class="col-4 align-self-center accroche ">Votre future salle de mariage, pourrait être un terrain</div>        
    </div>

    <div class=trait></div>

    <div class="row justify-content-around" style="margin : 50px">
        <div class="col-3 align-self-center accroche" style="width:400px">Soyez libres de la durée de votre location</div>
        <div class="col-4 simplif">Rien ne vous oblige à louer un terrain une semaine si vous n'en avez besoin que un jour ou deux. Soyez maîtres de vos locations avec LeTerrainFacile.</div>
    </div>

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