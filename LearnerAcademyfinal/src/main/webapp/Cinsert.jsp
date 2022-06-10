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
			//e.setEmpname(request.getParameter("name"));
			//e.setEmpemail(request.getParameter("email"));
			c.setCid(request.getParameter("cid"));
			c.setCourse(request.getParameter("subject"));
			
			CourseDAO dao=new CourseDAO();
			int row=dao.insertcourse(c);
			if(row>0){
				RequestDispatcher rd=request.getRequestDispatcher("Classlist.jsp");
				response.setContentType("Classlist.jsp");
				out.print("insertion sucessful");
				rd.include(request, response);
			}
			else{
				out.print("insertion failed");
				
			}
		%>
</body>
</html>