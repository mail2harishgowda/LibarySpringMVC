<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" 
integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<link href="C:/Harish/dev/bootstrap-3.3.6/dist/css/bootstrap.css" rel="stylesheet"  />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>
   

<form:form action="/Library/login" method="post" modelAttribute="loginUser">


    Userid:
	  <form:input type="text" path="userId" />
	  <form:errors  path="userId" class="error"/>
	
   Password
   <form:input type="text" path="userName" />
   <form:errors path="userName" class="error" />
  
  <input  type="submit" value="Submit" />
 
</form:form>

</body>
</html>