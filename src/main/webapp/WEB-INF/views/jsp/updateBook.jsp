<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" 
integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Book</title>

<style>

body {


}
.form-container {
 top:100px;
 
 position:relative;
 width:400px;
  
}
.btn{
  width:100%;
}
.updateBookHeader {
  text-align:center;
  padding:1px;
}

#formcontainer{   
  border: 1px solid #ccc;
   padding:20px;
}
</style>
</head>
<body>

<div class="container form-container">
<div class="updateBookHeader bg-info">
<h4>Update Book Details</h3>
<div></div>
</div>
<div id="formcontainer">
<form:form action="/Library/book/${updatedbookdetails.bookId}/update" method="post" modelAttribute="updatedbookdetails">
  <br/>
  <form:input type="hidden" value='${updatedbookdetails.bookId}'  path="bookId" /><br/>
   <div class="form-group">
   <label>BookName</label>
  <form:input class="form-control" type="text" value='${updatedbookdetails.bookName}' path="bookName" />
  </div>
  <br/>
   <div class="form-group">
   <label>Author</label>
  <form:input class="form-control" type="text" value='${updatedbookdetails.author}' path="author" /><br/>
   </div>
  <input class="btn btn-info" type="submit" value="Submit" /><br/>
  
</form:form>
</div>

</div>
</body>
</html>