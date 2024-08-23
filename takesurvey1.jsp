<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<%
String stuname=(String)session.getAttribute("email");
String surid=request.getParameter("surid");
String ques1=request.getParameter("ques1");
String ques2=request.getParameter("ques2");
String ques3=request.getParameter("ques3");
String ques4=request.getParameter("ques4");
String ques5=request.getParameter("ques5");
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
String sql="insert into surpoints(surid,stuemail,ques1,ques2,ques3,ques4,ques5) values('"+surid+"','"+stuname+"','"+ques1+"','"+ques2+"','"+ques3+"','"+ques4+"','"+ques5+"')";
int q= st.executeUpdate(sql);
if(q>0){
	Statement st2=con.createStatement();
	
	String sql2="update oldstd set surst='yes' where email='"+stuname+"'";
	int z2=st2.executeUpdate(sql2);
	
	response.sendRedirect("takesurvey.jsp?Upload_success");
}else{
	response.sendRedirect("takesurvey.jsp?Upload_failed");
}
%>
