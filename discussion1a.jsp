<%@page import="databaseconnection.*,java.sql.*"%>
<%!
Connection con;
Statement stmt;
ResultSet rs;
%>
<%
String msg = request.getParameter("msg");

con = databasecon.getconnection();
stmt = con.createStatement();
String qry="insert into discusstab values('"+session.getAttribute("email")+"','"+msg+"')";
stmt.executeUpdate(qry);
response.sendRedirect("discussiona.jsp");
%>

