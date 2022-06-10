<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.Bean.*" %>
    <%@ page import="com.dao.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Students details</h1>
<%
SUBTEACHDAO dao=new SUBTEACHDAO();
List<teacherandsubject> list=dao.getallsubteach();
%>


<table border="2">

<tr><th>Tid</th><th>Subject</th><th>Teacher</th><th>Course</th></tr>

<%for(teacherandsubject ss:list){%>
<tr><td><%=ss.getTid()%></td><td><%=ss.getSub() %></td><td><%=ss.getTeacher()%></td><td><%=ss.getCourse()%></td></tr>
<%}%>
<form action="Home.html">
<input type="submit" value="Homepage">
</form>
<form action="subjectandteacher.html">
<input type="submit" value="add teacher and assign class">
</form>
<form action="editsubandteach.html">
<input type="submit" value="edit">
</form>
<form action="deletesubandteach.html">
<input type="submit" value="Delete">
</form>
</body>
</html>