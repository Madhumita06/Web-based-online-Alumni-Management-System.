<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%
String a = request.getParameter("uid");
String b= request.getParameter("pwd");
String name=null,u=null,test2=null;

try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
	
String sss1 = "select * from faculty where email='"+a+"' && pwd='"+b+"' ";

	ResultSet rs1=st1.executeQuery(sss1);
	if(rs1.next())
	{

//
		name=rs1.getString("name");
		session.setAttribute("name",name);
		session.setAttribute("email",a);
		response.sendRedirect("facultyhome.jsp?msg=null");
		}
		else{
		response.sendRedirect("faculty.jsp?msg=null");

		}
}


catch(Exception e1)
{
out.println(e1.getMessage());
}

%>