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
                     
                     <li><a href="/PresTerrain">Terrain</a></li>
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
                     
						<p>Bienvenue ${sessionScope.login}</p>
					</c:if>
					<c:if test="${empty sessionScope.login}">
					<a href="/ProjetSiteWeb/Connexion">Se connecter</a>
                     <button class="btn btn-success linkCompte">Inscrivez-vous</button>
                     </c:if>
                 </div>
            </div>
            
            
        
    </header>
</body>
</html>