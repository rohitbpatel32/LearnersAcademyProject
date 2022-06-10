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


Course c=new Course();
c.setCid(request.getParameter("cid"));
c.setCourse(request.getParameter("subject"));
CourseDAO dao=new CourseDAO();
int row=dao.edit(c);
if(row>0){
	//RequestDispatcher rd=request.getRequestDispatcher("addclasses.jsp");
	//response.setContentType("addclasses.jsp");
	out.print("update sucessful");
	//rd.include(request, response);
}
else{
	out.print("update failed");
}
%>

</body>
</html>