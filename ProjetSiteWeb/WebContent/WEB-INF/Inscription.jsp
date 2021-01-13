<!-- formulaire d'inscription, bootstrap fait-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
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
    
<div class="container "> 
        <form method="post" action="inscription.php">
            <h1>Crée ton compte le Terrain Facile :</h1>

                <div class="row justify-content-center">
                    <div class="col-4">
                        <label for="prenom">Prénom :</label></br>
                        <input type="texte" name="prenom" id="prenom" placeholder=" ex: Pierre"/>
                    </div>
                    <div class="col-4">
                        <label class="label" for="nom">Nom :</label></br>
                        <input  type="texte" name="nom" id="nom" placeholder=" ex: Dupont"/>
                    </div>
                </div>

                <div class="row row justify-content-center">
                    <div class="col-8">
                        <label class="label" for="mail">Adresse e-mail :</label></br>
                        <input type="email" name="mail" id="mail" placeholder= "exemple@leterrainfacile.com">
                    </div>
                </div>

                <div class="row justify-content-center">
                    <div class="col-4">
                        <label class="label" for="mdp">Mot de passe :</label></br>
                        <input type="password" name="mdp" id="mdp" placeholder=" ex: motdepasse"/>
                    </div> 
                    <div class="col-4">
                        <label class="label" for="confirmation">Confirmer :</label></br>
                        <input type="password" name="confirmation" id="confirmation" placeholder=" ex: motdepasse"/>
                    </div>
                </div>

                <div class="row justify-content-center">
              
                    <div class="col-4"> Genre </br>
                        <label class="label" for="madame"> Mme</label>
                        <input type="checkbox" name="madame" id="madame"/>
                        <label class="label" for="monsieur"> M.</label>
                        <input type="checkbox" name="monsieur" id="monsieur"/>
                    </div>
                    <div class="col-4">
                        <label class="label" for="societe">Societe : </label></br>
                        <input type="text" name="societe" id="societe" placeholder=" Facultatif">
                    </div>
                </div>

              

                <div class="row">
                    <div class="col-2"></div>
                    <button class="btn btn-primary text-center"> S'inscrire </button>
            </div>
        </form>
    </div>

        <div class="espaceFooter"></div>  <!--bloc qui permet d'obtenir un espace entre le haut de page et le dï¿½but du contenu, il fait la taille du header-->
</body>
</html>