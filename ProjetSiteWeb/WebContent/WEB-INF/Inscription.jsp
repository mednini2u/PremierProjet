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
<div class="row bloctitreRecherches" style="width:400px"><span class="titreRecherche">S'inscrire:</span></div>
   
             <div class="row panel panel-success justify-content-center">
             
                <div style="margin-bottom: 25px" class="row justify-content-center input-group text-center col-xl-8 col-lg-8 col-md-10 col-sm-10 col-10">
                            <input type="text" id="login"  class="form-control text-center" name="login"  placeholder="Pseudonyme">                                        
                </div>
                            
                <div style="margin-bottom: 25px" class="row justify-content-center input-group text-center col-xl-8 col-lg-8 col-md-10 col-sm-10 col-10">
                     <input type="text" id="mail"  class="form-control text-center" name="mail"  placeholder="E-mail">                                        
                </div>
                            
                <div style="margin-bottom: 25px" class="row input-group text-center col-xl-8 col-lg-8 col-md-10 col-sm-10 col-10">
                    <input type="password" id="password"  class="form-control text-center" name="password"  placeholder="Mot de passe">
                     <input type="password" id="password"  class="form-control text-center" name="password"  placeholder="Confirmer mot de passe">                                         
               	</div>

              

                <div class="col-sm-12 controls text-center">
                              <input type="submit" id="btn-login" class="btn btn-success" value="S'inscrire">
                            </div>
                            </div>
        </form>
    </div>

        <div class="espaceFooter"></div>  <!--bloc qui permet d'obtenir un espace entre le haut de page et le dï¿½but du contenu, il fait la taille du header-->
</body>
</html>