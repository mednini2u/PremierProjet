<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Login Page</title>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	
	
</head>

<body>
<c:if test="${!empty sessionScope.login && !empty sessionScope.password }">
	<c:out value="Vous êtes ${sessionScope.login }"></c:out>
</c:if>


<div class="col-sm-12 controls">
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


                                <div class="form-group">
                                    <div class="col-md-12 control">
                                        <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                            
                                        <a href="#" >
                                            S'inscrire
                                        </a>
                                        </div>
                                    </div>
                                </div>    
                                
                                <div class="col-sm-12 controls">
                                      <input type="submit" id="btn-login" class="btn btn-success" value="Se connecter">
                                      

                                    </div>
                                    <br>
							<!--<c:if test="${auth.connexion == true}">
							<c:out value="Vous êtes authentifié"></c:out>
							<a href="./logout"> <input type="button" value="Deconnexion"> </a>
							</c:if>


<a href="./Profil"> <input type="button" value="Profil"> </a>-->
                            </form>     



                        </div>                     
                    </div>  
        </div>
    </div>    
      


</body>
</html>