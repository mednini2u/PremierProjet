<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>   
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

<c:if test="${!empty sessionScope.login}">
			<div id="messages" class="hide" role="alert">
              <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <div id="messages_content"></div>
            </div>
	<form name="form1" id="form1" action="Annonce" method="post" onsubmit="required()">
    
    <div class="container justify-content-center">

	   <div class="row bloctitreRecherches" style="width:600px ; text-align : center;"><span class="titreRecherche">Déposer une annonce :</span></div>

            <div class="row titreAnnonce" style="width : 600px">
                <div class="col">
                    <label for="titre">Titre de l'offre :</label>
                    <input class="w-100" type="text" name="noma" id="noma"/>
                </div>
            </div>
            
            <div class="row justify-content-between surfacePrix"  style="width : 600px">
                <div class="col-6">
                    <label class="textAnnonce" for="surface">Surface (m²) :</label><br>
                    <input class="w-100" type="text" name="surfacea" id="surfacea"/>
                </div>
                <div class="col-6">
                    <label class="textAnnonce" for="prix">Prix (€/j) :</label><br>
                    <input class="w-100" type="text" name="prixa" id="prixa"/>
                </div>    
            </div>

            <div class="row justify-content-center">
				<button type="submit" class="btn btn-secondary btn-sm center-block">Ajouter un terrain</button>
             </div>
    </div>
 	</form>
 	
 			<script src="http://code.jquery.com/jquery.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

        <script>
        function required()
        {
        	var empt = document.forms["form1"]["noma"].value;
        	var empt2 = document.forms["form1"]["surfacea"].value;
        	var empt3 = document.forms["form1"]["prixa"].value;
        	if (empt == "" || empt2 == "" || empt3 == "")
        	{
        		alert("Formulaire vide!");
        		return false;
        	}
        	else 
        	{
        		alert('Annonce envoyée!');
        		return true; 
        	}
        }
        /*
        function
            $('#form').submit(function(e) {
            	if($("#txtID").val()==''){
                    event.PreventDefault();
                    alert("your message");
               }
                $('#messages').removeClass('hide').addClass('alert alert-success alert-dismissible').slideDown().show();
                $('#messages_content').html('<h4>Terrain enregistré</h4>');
                $('#modal').modal('show');
                
            });*/
        </script>

     
</c:if>
    <c:if test="${empty sessionScope.login}">
	Vous devez vous connectez pour accedez aux terrains!
	</c:if>

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