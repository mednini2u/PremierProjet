<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/style.css" />
    <title>Le Terrain Facile</title>
</head>

<body>
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

    <div class="row bloctitreRecherches"><span class="titreRecherche">Trouvez le terrain de vos rêves </span></div>

    <a style="text-decoration: none;" href="lien.html">
        <div class="row justify-content-around elementRecherche">
        <div class="col">
            <div class="titreTerrain">Terrain plat</div>
            <div class="caracteristiquesTerrain">4000m2</div>    
            <div class="caracteristiquesTerrain"> 1000€/mois</div>
        </div>
        <div class="col-4 align-self-center" style="border-radius: 0px;"><img style="border-radius: 15px;" src="img/Terrains/terrain1.jpg" alt="photo du terrain"/></div> <!-- 100px de haut pour les photos--> 
    </div></a>

    <a style="text-decoration: none;" href="lien.html">
        <div class="row justify-content-between elementRecherche">
        <div class="col">
            <div class="titreTerrain">Terrain pour festival</div>
            <div class="caracteristiquesTerrain">2545m2</div>    
            <div class="caracteristiquesTerrain"> 840€/mois</div>
        </div>
        <div class="col-4 align-self-center"><img style="border-radius: 15px;"src="img/Terrains/terrain2.jpg" alt="photo du terrain"/></div>
    </div></a>

    <a style="text-decoration: none;" href="lien.html">
        <div class="row justify-content-between elementRecherche">
        <div class="col">
            <div class="titreTerrain">Terrain constructible</div>
            <div class="caracteristiquesTerrain">300m2</div>    
            <div class="caracteristiquesTerrain"> 800€/mois</div>
        </div>
        <div class="col-4 align-self-center"><img style="border-radius: 15px;"src="img/Terrains/terrain3.jpg" alt="photo du terrain"/></div>
    </div></a>

    <a style="text-decoration: none;" href="lien.html">
    <div class="row justify-content-between elementRecherche">
        <div class="col">
            <div class="titreTerrain">Grand terrain libre</div>
            <div class="caracteristiquesTerrain">2000m2</div>    
            <div class="caracteristiquesTerrain"> 470€/mois</div>
        </div>
        <div class="col-4 align-self-center"><img style="border-radius: 15px;"src="img/Terrains/terrain4.jpg" alt="photo du terrain"/></div>
    </div></a>

    <a style="text-decoration: none;" href="lien.html">
    <div class="row justify-content-between elementRecherche">
        <div class="col">
            <div class="titreTerrain">Terrain à louer</div>
            <div class="caracteristiquesTerrain">500m2</div>    
            <div class="caracteristiquesTerrain"> 420€/mois</div>
        </div>
        <div class="col-4 align-self-center"><img style="border-radius: 15px;"src="img/Terrains/terrain5.jpg" alt="photo du terrain"/></div>
    </div></a>

    <a style="text-decoration: none;" href="lien.html">
    <div class="row justify-content-between elementRecherche">
        <div class="col">
            <div class="titreTerrain">Terrain vert</div>
            <div class="caracteristiquesTerrain">2000m2</div>    
            <div class="caracteristiquesTerrain"> 800€/mois</div>
        </div>
        <div class="col-4 align-self-center"><img style="border-radius: 15px;"src="img/Terrains/terrain6.jpg" alt="photo du terrain"/></div>
    </div></a>

    <div class="espaceFooter"></div>  <!--bloc qui permet d'obtenir un espace entre le haut de page et le début du contenu, il fait la taille du header-->

    <footer>
        <ul>
            <li><a class="linkFooter" href="#">Nous contacter</a></li>
            <li><a class="linkFooter" href="#">Qui sommes-nous ?</a></li>
            <li><a class="linkFooter" href="#">Nos partenaires</a></li>
            <li><a class="linkFooter" href="#">Singalez un problème</a></li>
        </ul>
    </footer>

</body>
</html>