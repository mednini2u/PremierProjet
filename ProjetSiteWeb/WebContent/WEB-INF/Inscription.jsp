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
        <form name="form2" id="form2" method="post" action="Inscription" onsubmit="required(); redirect();">
<div class="row bloctitreRecherches" style="width:400px"><span class="titreRecherche">S'inscrire:</span></div>
   
             <div class="row panel panel-success justify-content-center">
             
                <div style="margin-bottom: 25px" class="row justify-content-center input-group text-center col-xl-8 col-lg-8 col-md-10 col-sm-10 col-10">
                            <input type="text" id="pseudo"  class="form-control text-center" name="pseudo"  placeholder="Pseudonyme"> 
                                                                   
                </div>
                            
                <div style="margin-bottom: 25px" class="row justify-content-center input-group text-center col-xl-8 col-lg-8 col-md-10 col-sm-10 col-10">
                     <input type="text" id="mail"  class="form-control text-center" name="mail"  placeholder="E-mail">                                        
                </div>
                            
                <div style="margin-bottom: 25px" class="row input-group text-center col-xl-8 col-lg-8 col-md-10 col-sm-10 col-10">
                    <input type="password" id="password1"  class="form-control text-center" name="password1"  placeholder="Mot de passe">
                     <input type="password" id="password2"  class="form-control text-center" name="password2"  placeholder="Confirmer mot de passe">                                         
               	</div>

              

                <div class="col-sm-12 controls text-center">
                              <input type="submit" id="btn-login" class="btn btn-success" value="S'inscrire">
                            </div>
                            </div>
        </form>
    </div>
   
    
    <script>
    	function required()
    	{
    	var empt = document.forms["form2"]["pseudo"].value;
    	var empt2 = document.forms["form2"]["mail"].value;
    	var empt3 = document.forms["form2"]["password1"].value;
    	var empt4 = document.forms["form2"]["password2"].value;
    	if (empt == "" || empt2 == "" || empt3 == "" || empt4 == "")
    	{
    		alert("Formulaire incomplet!");
    		return false;
    	}
    	else 
    	{
    		if(empt3 != empt4){
        			alert("Les mots de passe sont différents!");
        			return false;
    		}
    		else{
        			alert('Inscription terminée! Vous pouvez dès à présent vous connecter.');
            		return true; 
            		
        		}
    		
    	}
    
    	}
    	
    	function redirect()
    	{
    		window.location.href="Index";
    	}
    </script>


        <div class="espaceFooter"></div>  <!--bloc qui permet d'obtenir un espace entre le haut de page et le dï¿½but du contenu, il fait la taille du header-->
</body>
</html>