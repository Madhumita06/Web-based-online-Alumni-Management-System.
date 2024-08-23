<%@page  import="java.sql.*" import="databaseconnection.*" import="details.*"%>
<%
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
String sql="update adsur set surst='no'";
int z=st.executeUpdate(sql);
if(z!=0){
	Statement st1=con.createStatement();
	String sql1="update surques set surst='yes' where surst='no'";
	int z1=st1.executeUpdate(sql1);
	
	Statement st2=con.createStatement();
	String sql2="update student set surst='yes'";
	int z2=st2.executeUpdate(sql2);
	
	response.sendRedirect("uploadsurvey.jsp?Survey_stopped_successfully");
}else{
	response.sendRedirect("uploadsurvey.jsp?Survey_stop_failed");
}
%>