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
s.setStudfname(request.getParameter("studfname"));
s.setStudlname(request.getParameter("studlname"));
s.setStuddob(request.getParameter("studdob"));
s.setStudadd(request.getParameter("studadd"));
s.setStudphone(request.getParameter("studphone"));
s.setAssigncls(request.getParameter("assigncls"));
s.setClassid(request.getParameter("classid"));
StudentDao dao=new StudentDao();
int r=dao.edit(s);
if(r>0){
	
	out.print("Update success");
	
}
else{
	out.print("update failed");
}
%>
<form action="Home.html">
<input type="submit" value="Homepage">
</form>
</body>
</html>