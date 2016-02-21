<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" 
integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Book</title>
<style>
.form-container {
  width:400px;
  border: 1px solid #ccc;
  position:relative;
  top:100px;
  padding:20px;
}
.btn{
  width:100%;
}
</style>
</head>
<body>
<div class="container form-container">
<form:form action="/Library/book" method="post" modelAttribute="bookdetails">
  <br/>
  <div class="form-group">
  <label>BookName</label>
   <form:input class="form-control" type="text" path="bookName" placeholder="Book Name"/>
  </div><br/>
  
  <div class="form-group">
  <label>Author</label>
  <form:input class="form-control" type="text" path="author" placeholder="Author" /><br/>
  </div><br/>
  <input class="btn btn-info" type="submit" value="Submit" /><br/>
  </div>
</form:form>
</body>
</html>