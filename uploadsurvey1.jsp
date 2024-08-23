<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<%
String sname=request.getParameter("sname");
String sdes=request.getParameter("sdes");
String ques1=request.getParameter("ques1");
String ques2=request.getParameter("ques2");
String ques3=request.getParameter("ques3");
String ques4=request.getParameter("ques4");
String ques5=request.getParameter("ques5");
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
String sql="insert into surques(sname,sdes,ques1,ques2,ques3,ques4,ques5) values('"+sname+"','"+sdes+"','"+ques1+"','"+ques2+"','"+ques3+"','"+ques4+"','"+ques5+"')";
int q= st.executeUpdate(sql);
if(q>0){
	Statement st1=con.createStatement();
	Statement st2=con.createStatement();
	
	String sql1="update adsur set surst='yes'";
	int z=st1.executeUpdate(sql1);
	
	//String sql2="update student set surst='no'";
	String sql2="update oldstd set surst='no'";
	int z2=st2.executeUpdate(sql2);
	
	response.sendRedirect("uploadsurvey.jsp?Upload_success");
}else{
	response.sendRedirect("uploadsurvey.jsp?Upload_failed");
}
%>
