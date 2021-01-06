<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <div class ="col-3 align-self-center "><a href="index.html"><img src="wire/logo4.png" alt="logo Terrain Facile"></a></div>
           <!-- <div class ="col-6 align-self-center " style ="">
                <ul>
                <li><a href="terrain.html">Terrain</a></li>
                <li class="traitHead"></li>
                <li><a href="parc.html">Parc</a></li>
                <li class="traitHead"></li>
                <li><a href="terrain.html">Forêt</a></li>
                <li class="traitHead"></li>
                <li><a href="parc.html">Champs</a></li>
                <li class="traitHead"></li>
                <li><a href="terrain.html">Jardin</a></li>
                </ul>
            </div>-->
            <div class="col-3 align-self-center " style="text-align: end;">
                <a href="compte.html">Se connecter</a>
                <a class="btn btn-success linkCompte" href="inscription.html">Inscrivez-vous</a>
            </div>
       </div>
    </header>

    <form action="Annonce" method="post">

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
         
	</form>Déposez votre offre</a>
	
	<form action="Annonce" method="post">
	
	   <div class="row bloctitreRecherches" style="width:600px"><span class="titreRecherche">Déposes ton annonce :</span></div>

            <div class="row titreAnnonce">
                <div class="col">
                    <label class="textAnnonce" for="titre">Titre de l'offre :</label>
                    <input style="width : 520px" type="text" name="noma" id="noma"/>
                </div>
            </div>
            
            <div class="row justify-content-between surfacePrix">
                <div class="col-5">
                    <label class="textAnnonce" for="surface">Surface (m²) :</label><br>
                    <input type="text" name="surfacea" id="surfacea"/>
                </div>
                <div class="col-5">
                    <label class="textAnnonce" for="prix">Prix (€/j) :</label><br>
                    <input type="text" name="prixa" id="prixa"/>
                </div>
            </div>

            <button type="submit" class="btn btn-secondary btn-sm center-block">Ajouter un terrain</button>

     </form>

    

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