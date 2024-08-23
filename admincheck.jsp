<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%
String a = request.getParameter("uid");
String b= request.getParameter("pwd");
try{
	if(a.equalsIgnoreCase("admin") && b.equalsIgnoreCase("admin"))
	{


		
		session.setAttribute("name",a);
		
		response.sendRedirect("adminhome.jsp?msg=null");
		}
		else{
		response.sendRedirect("admin.jsp?mssg=null");

		}
}


catch(Exception e1)
{
out.println(e1.getMessage());
}

%>