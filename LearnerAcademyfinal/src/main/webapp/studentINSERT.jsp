




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.Dbcon.*" %>
    <%@ page import="java.sql.Connection" %>
    <%@ page import="java.sql.PreparedStatement" %>
    <%@ page import="java.sql.SQLException" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style type="text/css">
.body {
	border:1px solid green;
	border-radius:10px;
	padding-top: 15px;
	padding : 20px;
	max-width: 300px; 
  	margin: auto;
}
.btn {
	padding: 1% 3%;
}

.h{
	max-width: 290px;
	margin: auto;
	padding-bottom: 20px;
	padding-top: 20px;
	color: green;
}

.main{
	background-color: #FFFAFA;
}

</style>

<body class="main">
<hr>
<h3 class="h">ADD STUDENT RECORD HERE</h3>

<div class="body">

<form action="sinsert.jsp">

<b>STUDENT ID </b><br> 
<input type="number" name="studid" required="required"><br><br>

<b>FIRST NAME </b><br>
<input type="text" name="studfname" required="required"><br><br>

<b>LAST NAME</b><br> 
<input type="text" name="studlname" required="required"><br><br>

<b>DATE OF BIRTH</b><br>
<input type="date" name="studdob" required="required"><br><br>

<b>ADDRESS</b><br>
<input type="text" name="studadd" required="required"><br><br>

<b>STUDENT NUMBER</b><br>
<input type="number" name="studphone" required="required"><br><br>

<b>ASSIGN CLASS</b><br>
<input type="text" name="assigncls" required="required"><br><br>

<b>CLASS ID</b><br>
<input type="number" name="classid" required="required"><br><br>

<button class="btn" type="submit">Save</button>
</form>
</div>


</body>
</html>