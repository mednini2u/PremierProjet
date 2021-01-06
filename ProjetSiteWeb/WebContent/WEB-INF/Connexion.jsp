

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	

	
</head>

<body>
<header>    
    
            <div class="row justify-content-between" style="width : 100%">
                 <div class ="col-3 align-self-center "><a>
     
				</a></div>
                 <div class ="col-6 align-self-center " style ="">
                     <ul>
                     
                     <li><a href="/ProjetSiteWeb/PresTerrain">Terrain</a></li>
                     <li class="traitHead"></li>
                     <li><a href="parc.html">Parc</a></li>
                     <li class="traitHead"></li>
                     <li><a href="terrain.html">Forêt</a></li>
                     <li class="traitHead"></li>
                     <li><a href="parc.html">Champs</a></li>
                     
                     </ul>
                 </div>
                 <div class="col-3 align-self-center " style="text-align: end;">
                    
                     
                     <c:if test="${!empty sessionScope.login}">
                     
						Bienvenue ${sessionScope.login}
						<a href="/ProjetSiteWeb/Deconnexion">se déconnecter</a>
					</c:if>
					<c:if test="${empty sessionScope.login}">
					<a href="/ProjetSiteWeb/Connexion">Se connecter</a>
                     <button class="btn btn-success linkCompte">Inscrivez-vous</button>
                     </c:if>
                 </div>
            </div>
            
            
        
    </header>
    
    
      <form action="Connexion" method="post">
      
     
      
      <div class="container text-center">    
        <div id="loginbox" style="margin-top:30px;text-align;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 text-center">                    
            <div class="panel panel-success text-center" >
                   
							<c:if test="${empty sessionScope.login}">
                     
				
					

                            <div style="margin-bottom: 25px" class="input-group text-center">
                                        <input type="text" id="login"  class="form-control text-center" name="login"  placeholder="Pseudonyme">                                        
                            </div>
                            
                            <div style="margin-bottom: 25px" class="input-group text-center">
                                        <input type="password" id="password"  class="form-control text-center" name="password"  placeholder="Mot de passe">                                        
                            </div>
                            
                            <div class="col-sm-12 controls text-center">
                              <input type="submit" id="btn-login" class="btn btn-success" value="Se connecter">
                            </div>
                            
                            </c:if>
                    		
                    		<c:if test="${!empty sessionScope.login}" >
                    		<p>Vous êtes connecté !</p>
                    		<p><a href="/ProjetSiteWeb/Deconnexion">se déconnecter</a></p>
                    		</c:if>
                    		
            </div>
         </div>
   		</div>
                       
               Session ça fonctionne, admin pour ajouter des terrains, deconnexion fonctionen aussi
                       
                          
                            
   	 </form>
			
	


							

</body>
</html>