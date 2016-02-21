<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
${bookdetails.bookId} 
<form:form action="/Library/book/${updatedbookdetails.bookId}/update" method="post" modelAttribute="updatedbookdetails">
  <br/>
  <form:input type="hidden" value='${updatedbookdetails.bookId}'  path="bookId" /><br/>
  BookName: <form:input type="text" value='${updatedbookdetails.bookName}' path="bookName" /><br/>
  Author: <form:input type="text" value='${updatedbookdetails.author}' path="author" /><br/>
  <input type="submit" value="Submit" /><br/>
  
</form:form>
</body>
</html>