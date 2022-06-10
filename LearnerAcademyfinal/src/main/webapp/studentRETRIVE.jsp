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
StudentDao dao=new StudentDao();
List<Student> list=dao.getallstudents();
%>


<table border="2">

<tr><th>Studentid</th><th>Studentfname</th><th>Studentlname</th><th>StudentDOB</th><th>StudentAddsress</th>
<th>Student MObno.</th><th>Course</th><th>CourseId</th></tr>

<%for(Student ss:list){%>
<tr><td><%=ss.getStudid()%></td><td><%=ss.getStudfname() %></td><td><%=ss.getStudlname()%></td><td><%=ss.getStuddob()%></td>
<td><%=ss.getStudadd()%></td><td><%=ss.getStudphone()%></td><td><%=ss.getAssigncls()%></td><td><%=ss.getClassid()%></td></tr>
<%}%>
<form action="Home.html">
<input type="submit" value="Homepage">
</form>

</table>
</body>
</html>