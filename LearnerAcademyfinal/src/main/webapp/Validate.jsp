<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String user="rohit";
String pwd="@rohit33";
String u=request.getParameter("username");
String p=request.getParameter("password");
if(u.equalsIgnoreCase(user) && p.equalsIgnoreCase(pwd)) {
	response.sendRedirect("Home.html");
}
else {
	RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
	response.setContentType("login.jsp");
	out.println("Please check username and password entered!!");
	rd.include(request, response);
	
}


%>

</body>
</html>
