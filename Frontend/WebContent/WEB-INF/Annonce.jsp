<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>   
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

<c:if test="${!empty sessionScope.login}">
			<div id="messages" class="hide" role="alert">
              <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <div id="messages_content"></div>
            </div>
	<form name="form1" id="form1" action="Annonce" method="post" onsubmit="required()">
    
    <div class="container justify-content-center">

	   <div class="row bloctitreRecherches" style="width:600px ;"><span class="titreRecherche">Déposer une annonce :</span></div>

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
	
	<div class="container">
		
		<div class="row bloctitreRecherches" style="width:600px ;"><span class="titreRecherche">Oops...</span></div>

		<div class="row">
			<div class="col" style="text-align:center;">
				<p>Il faut que vous soyez connecté pour déposer une annonce !</p>
				<p>Si vous avez déjà un compte, pour vous connecter en cliquant sur ce lien : 
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