<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:if test="${auth.connexion == true}">
<c:out value="Vous �tes authentifi�"></c:out>
<c:out value="Vous �tes sur votre profil"></c:out>
<a href="./logout"> <input type="button" value="Deconnexion"> </a>
</c:if>

<c:if test="${auth.connexion == true}">
<c:out value="Vous n'�tes pas authentifi�"></c:out>
 
</c:if>

</body>
</html>