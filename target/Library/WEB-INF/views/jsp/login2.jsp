<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="C:/Harish/dev/bootstrap-3.3.6/dist/css/bootstrap.css" rel="stylesheet"  />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>
   This is login page!
   Language : <a href="?language=en">English</a>|<a href="?language=zh_CN">Chinese</a>
   
   
 <h2>
welcome.springmvc : <spring:message code="welcome.springmvc" text="default text" />
</h2>

Current Locale : ${pageContext.response.locale}
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