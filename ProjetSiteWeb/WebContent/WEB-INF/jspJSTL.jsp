<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
   
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mon premier site WEB dynamique</title>
</head>
<body>


<br/>
<c:out value="<h3> Bonjour ${login} </h3>" default="valeur par d�faut"  escapeXml="false"> </c:out> 

<br>







<br>
<c:if test="${auth.connexion == true}">
<c:out value="Vous �tes authentifi�"></c:out>
<a href="./logout"> <input type="button"> Deconnexion </a>
</c:if>

<c:if test="${auth.connexion == false}">
<c:out value="Bienvenue visiteur!"></c:out>
</c:if>

<br>

<c:if test="${!empty sessionScope.login && !empty sessionScope.password }">
	<c:out value="Vous �tes ${sessionScope.login }"></c:out>
</c:if>



<form method="post" action="jspJSTL">

<label for="login">Login: </label>
<input type="text" id="login" name="login"/>

<br>

<label for="password">Password: </label>
<input type="password" id="password" name="password"/>

<input type="submit" />

<br>
<a href='./index.jsp'>Index</a>

</form>

</body>
</html>