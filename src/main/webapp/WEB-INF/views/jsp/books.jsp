<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<link href="C:\Harish\dev\bootstrap-3.3.6\dist\css\bootstrap.css" rel="stylesheet" />

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" 
integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Books Page</title>

<style>

  .btndesign {
    width:100px;
  }
  
  .heading {
    padding:10px;
    font-weight:bold;
  }
  
  .btn-center {
  text-align: center;
  vertical-align: middle;
}
</style>
</head>
<body><br/></br><br/></br>
    <div class="container">

<div class="bg-info center-block text-center"><div class="heading">List of all books in our system</div></div>

<br/> <div class="pull-right"><button class="btn btn-info  btndesign " onclick="location.href='/Library/book/'">Add</button></div>
<br/><br/>
    
    <table class="table table-striped table-condensed" border=1 >
    
    <th>Book Id</th><th>Book Name</th><th >Author</th> <th colspan="2">Action</th>    
	    <c:forEach items="${books}" var="item">			    
	    <tr><td>${item.bookId }</td><td>${item.bookName }</td><td>${item.author}</td>
	    <td class="btn-center"> <button class="btn btn-info" onclick="location.href='/Library/book/${item.bookId}/delete'">Delete</button></td>
	    <td class="btn-center"> <button class="btn btn-info" onclick="location.href='/Library/book/${item.bookId}/update'">Update</button></td>
	    </tr>	
		</c:forEach>    
    </table>

	</div>
   <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="C:/Harish/dev/bootstrap-3.3.6/dist/js/bootstrap.min.js"></script>
</body>
</html>