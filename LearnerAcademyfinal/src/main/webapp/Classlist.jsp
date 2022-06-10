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
<form action="addclasses.jsp" >
	<center>
	<h1>List of classes</h1>
	<tr ><input type="submit" value="Add new classes" ></tr>
	</center>
</form>
<%
CourseDAO dao=new CourseDAO();
List<Course> list=dao.getallCourses();
%>
<center>
<table border="1">
<tr><th>Cid</th><th>Classes</th><th>Action</th></tr>
<%

 for(Course ee:list) {
%>
<tr><td><%=ee.getCid() %></td><td><%=ee.getCourse()%></td><td><a href="editclass.html">edit</a><a href="deleteclass.html">delete</a></td>
</tr>

<%}/*<a href="subjectandteacher.jsp">Subject and Teachers</a><a href="classreport.jsp">Classreport</a></td> */%>

</table>
</center>



</body>
</html>