<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%
String at = request.getParameter("at");
String link= request.getParameter("link");
String des= request.getParameter("des");


try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();

st1.executeUpdate("insert into requirement(at,link, des, name) values('"+at+"','"+link+"','"+des+"','"+session.getAttribute("name")+"')");
		response.sendRedirect("addreq.jsp?msg=null");

		}


catch(Exception e1)
{
out.println(e1.getMessage());
}

%>