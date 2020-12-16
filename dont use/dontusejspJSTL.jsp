<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

   
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mon premier site WEB dynamique</title>
</head>
<body>


<br/>
<c:out value="<h3> Bonjour ${login} </h3>" default="valeur par défaut"  escapeXml="false"> </c:out> 

<br>










<br>

<c:if test="${!empty sessionScope.login && !empty sessionScope.password }">
	<c:out value="Vous êtes ${sessionScope.login }"></c:out>
</c:if>



<form method="post" action="jspJSTL">

<label for="login">Login: </label>
<input type="text" id="login" name="login"/>

<br>

<label for="password">Password: </label>
<input type="password" id="password" name="password"/>

<input type="submit" />

<br>


<br>
<c:if test="${auth.connexion == true}">
<c:out value="Vous êtes authentifié"></c:out>
<a href="./logout"> <input type="button" value="Deconnexion"> </a>
</c:if>


<a href="./Profil"> <input type="button" value="Profil"> </a>


</form>

</body>
</html>