

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Login Page</title>
	
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
    
    
      <form action="Connexion" method="post">
      
      <div class="container">    
      	<div class="row bloctitreRecherches" style="width:400px"><span class="titreRecherche">Se connecter :</span></div>
        <!--  <div id="loginbox" style="margin-top:30px;text-align;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 text-center">     -->               
            <div class="row panel panel-success justify-content-center">
                   
							<c:if test="${empty sessionScope.login}">

                            <div style="margin-bottom: 25px" class="row justify-content-center input-group text-center col-xl-8 col-lg-8 col-md-10 col-sm-10 col-10">
                                        <input type="text" id="pseudo"  class="form-control text-center" name="pseudo"  placeholder="Pseudonyme">                                        
                            </div>
          
                           
                            <div style="margin-bottom: 25px" class="row input-group text-center col-xl-8 col-lg-8 col-md-10 col-sm-10 col-10">
                                        <input type="password" id="password"  class="form-control text-center" name="password"  placeholder="Mot de passe">                                        
                            </div>
                            
                            <div class="col-sm-12 controls text-center">
                              <input type="submit" id="btn-login" class="btn btn-success" value="Se connecter">
                            </div>
                            
                            </c:if>
                    		<c:if test="${okPseudo == true}">
                    			<c:if test="${!empty sessionScope.login}" >
                    			<p style="text-align: center">Vous êtes connecté ${sessionScope.login} !
                    			<br><a href="Deconnexion" style="text-align: center"> Se déconnecter</a></p>
                    			</c:if>       		
                    		</c:if>
                    		<c:if test="${okPseudo == false}">
                    			<c:if test="${empty sessionScope.login}" >
                    			<br><br>
                    			<p style="color : red; text-decoration: bold;">Compte non existant ou mot de passe erroné.</p>
                    			</c:if>       		
                    		</c:if>
            </div>
        </div>
                 
   	 </form>

<footer>
    	<div class="row">
        	<div class="col" style="text-align: center;">
            	<a class="linkFooter" href="Contact">Nous contacter</a>
        	</div>
    	</div>
</footer>
							

</body>
</html>