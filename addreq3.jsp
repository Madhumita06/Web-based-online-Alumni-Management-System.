<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%
String at = request.getParameter("event");
String link= request.getParameter("dat");
String des= request.getParameter("des");


try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();

st1.executeUpdate("insert into events(event,dat, des, name) values('"+at+"','"+link+"','"+des+"','"+session.getAttribute("name")+"')");
		response.sendRedirect("addevents.jsp?msg=null");

		}


catch(Exception e1)
{
out.println(e1.getMessage());
}

%>