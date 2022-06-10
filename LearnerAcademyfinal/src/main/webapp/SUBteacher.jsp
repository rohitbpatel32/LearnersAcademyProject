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
teacherandsubject s=new teacherandsubject();
s.setTid(request.getParameter("techid"));
s.setSub(request.getParameter("subject"));
s.setTeacher(request.getParameter("assigntech"));
s.setCourse(request.getParameter("assignclass"));

SUBTEACHDAO dao=new SUBTEACHDAO();
int r=dao.insert(s);
if(r>0){
	
	RequestDispatcher rd=request.getRequestDispatcher("subandteachlist.jsp");
	response.setContentType("subandteachlist.jsp");
	out.print("insert success");
	rd.include(request, response);
}
else{
	out.print("failed");
}
	




%>
</body>
</html>