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
                 <div class ="col-3 align-self-center "><a href="index.html"><img src="wire/logo4.png" alt="logo Terrain Facile"></a></div>
                 <div class ="col-6 align-self-center " style ="">
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
                 </div>
                 <div class="col-3 align-self-center " style="text-align: end;">
                     <a href="compte.html">Se connecter</a>
                     <button class="btn btn-success linkCompte">Inscrivez-vous</button>
                 </div>
            </div>
        
    </header>
    
<c:if test="${!empty sessionScope.login && !empty sessionScope.password }">
	<c:out value="Vous êtes ${sessionScope.login }"></c:out>
</c:if>


<div class="col-sm-12 controls text-center">
	<a href="./BDD" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Présentation des terrains</a>
</div>

<div class="container">    
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-success" >
                    <div class="panel-heading p-3 mb-2 bg-succes text-white">
                        <div style="float:right; font-size: 70%; position: relative; top:-6px"><a href="#">Mot de passe oublié?</a></div>
                    </div>   
					
                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form id="loginform" class="form-horizontal" role="form">
                                    
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input id="login" type="text" class="form-control" name="login"  placeholder="Pseudonyme">                                        
                                    </div>
                                
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <input id="password" type="password" class="form-control" name="password" placeholder="Mot de passe">
                                    </div>
                                    

                                <div style="margin-top:10px" class="form-group">
                              

                                    
                                </div>


                                <div class="form-group text-center">
                                    <div class="col-md-12 control">
                                        <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                            
                                        <a href="/ProjetSiteWeb/Inscription" >
                                            S'inscrire
                                        </a>
                                        </div>
                                    </div>
                                </div>    
                                
                                <div class="col-sm-12 controls text-center">
                                      <input type="submit" id="btn-login" class="btn btn-success" value="Se connecter">
                                      

                                    </div>
                                    <br>
				
                            </form>     



                        </div>                     
                    </div>  
        </div>
    </div>    
      


</body>
</html>