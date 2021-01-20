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
    
<div class="container">    
   
  <div class="row panel panel-success justify-content-center">
                   
	<c:if test="${Form == true}">
    	<c:if test="${okPseudo == true && Mdpdif == false}">
    		<div class="alert alert-warning" role="alert">
				Pseudo déjà existant
      		</div>
		</c:if>
	<c:if test="${okPseudo == false && Mdpdif == true}">
		<div class="alert alert-warning" role="alert">
              Mots de passe différents
    	</div>
	</c:if> 
	
	<c:if test="${okPseudo == true && Mdpdif == true}">
		<div class="alert alert-success" role="alert">
              Vous êtes inscrits
         </div>
	</c:if>  
	  	   	
	</c:if> 

	<c:if test="${Form == false}">
		<div class="alert alert-warning" role="alert">
        	 Formulaire incomplet !
    	</div>
	</c:if>    
	</div>
</div>

<div class="container "> 
    <form name="form2" id="form2" method="post" action="Inscription" onsubmit="required();">
		<div class="row bloctitreRecherches" style="width:400px"><span class="titreRecherche">S'inscrire:</span></div>
   
             <div class="row panel panel-success justify-content-center">
             
                <div style="margin-bottom: 25px" class="row justify-content-center input-group text-center col-xl-8 col-lg-8 col-md-10 col-sm-10 col-10">
                    <input type="text" id="pseudo"  class="form-control text-center" style ="margin : 4px" name="pseudo"  placeholder="Pseudonyme">                                         
                </div>
                            
                <div style="margin-bottom: 25px" class="row justify-content-center input-group text-center col-xl-8 col-lg-8 col-md-10 col-sm-10 col-10">
                    <input type="text" id="mail"  class="form-control text-center" style ="margin : 4px" name="mail"  placeholder="E-mail">                                        
                </div>
                            
                <div style="margin-bottom: 25px" class="row input-group text-center col-xl-8 col-lg-8 col-md-10 col-sm-10 col-10">
                    <input type="password" id="password1"  class="form-control text-center" style ="margin : 4px 6px 4px 4px" name="password1"  placeholder="Mot de passe">
                    <input type="password" id="password2"  class="form-control text-center" style ="margin : 4px 4px 4px 6px" name="password2"  placeholder="Confirmer mot de passe">                                         
               	</div>

                <div class="col-sm-12 controls text-center">
                    <input type="submit" id="btn-login" class="btn btn-success" value="S'inscrire">
                </div>
        </div>
   </form>
</div>

   <div class="espaceFooter"></div>  <!--bloc qui permet d'obtenir un espace entre le haut de page et le dï¿½but du contenu, il fait la taille du header-->
 
 	<footer>
    	<div class="row">
        	<div class="col" style="text-align: center">
            	<a class="linkFooter" href="Contact">Nous contacter</a>
        	</div>
    	</div>
   </footer>
   
</body>
</html>