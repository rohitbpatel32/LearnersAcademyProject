<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.Connection" %>
    <%@ page import="java.sql.PreparedStatement" %>
    <%@ page import="java.sql.ResultSet" %>
    <%@ page import="java.sql.SQLException" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="java.util.List" %>
    <%@ page import="com.Dbcon.DBUtil" %>
    <%@ page import="com.Bean.Course" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Connection con=DBUtil.getConn();
String sql="select Student.studid,Student.studfname,Student.studlname,Student.Course,Course.Cid from Course inner join Student where Course.Cid=Student.Cid and Course.Course='BBA'";
PreparedStatement ps=con.prepareStatement(sql);
ResultSet rs=ps.executeQuery();

%>
 <TABLE BORDER="1">
            <TR>
           		<TH>STUDId</TH>
                <TH>First Name</TH>
                <TH>Last Name</TH>
                <TH>Course</TH>
                <TH>CId</TH>
            </TR>
            <% while(rs.next()){ %>
            <TR>
                <TD> <%= rs.getString(1) %></TD>
                <TD> <%= rs.getString(2) %></TD>
                <TD> <%= rs.getString(3) %></TD>
                <TD> <%= rs.getString(4) %></TD>
                <TD> <%= rs.getString(5) %></TD>
                
                
                
            </TR>
            <% } %>
        </TABLE>
        <%
Connection con1=DBUtil.getConn();
String sql1="select Student.studid,Student.studfname,Student.studlname,Student.Course,Course.Cid from Course inner join Student where Course.Cid=Student.Cid and Course.Course='BCA'";
PreparedStatement ps1=con1.prepareStatement(sql1);
ResultSet rs1=ps1.executeQuery();

%>
<TABLE BORDER="1">
            <TR>
           		<TH>STUDId</TH>
                <TH>First Name</TH>
                <TH>Last Name</TH>
                <TH>Course</TH>
                <TH>CId</TH>
            </TR>
            <% while(rs1.next()){ %>
            <TR>
                <TD> <%= rs1.getString(1) %></TD>
                <TD> <%= rs1.getString(2) %></TD>
                <TD> <%= rs1.getString(3) %></TD>
                <TD> <%= rs1.getString(4) %></TD>
                <TD> <%= rs1.getString(5) %></TD>
                
                
                
            </TR>
            <% } %>
        </TABLE>

</body>
</html>