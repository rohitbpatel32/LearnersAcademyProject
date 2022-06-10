<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.Bean.*" %>
    <%@ page import="com.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
	Student s=new Student();
s.setStudid(request.getParameter("studid"));

StudentDao dao=new StudentDao();
int r=dao.delete(s);
if(r>0){
	
	out.print("Deleted successfully success");
	
}
else{
	out.print("Delete failed");
}
%>
<form action="Home.html">
<input type="submit" value="Homepage">
</form>

</body>
</html>