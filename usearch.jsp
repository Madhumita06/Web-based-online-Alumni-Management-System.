
<%@ include file="uheader.jsp"%>

<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>



<% String mail=request.getParameter("email");
%> 
<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
String sql="select * from register where email='"+mail+"' ";
//System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
%>
<form method="post" action="search2.jsp">
<table align="center" >

<tr><td>
<tr><td> <h2>Results are</h2>
<%
while(rs.next()){

%>
<tr><td colspan=2> <img src="view1.jsp?id=<%=rs.getString("email")%>" alt="" style="width:258px;height:251px;" >
<tr><td colspan=2> <br><h3>Email:	<%=rs.getString("email")%>
<input type="hidden" name="mail" value="<%=rs.getString("email")%>"/>
<tr><td colspan=2><input type="submit" value="Send Friend Reqest"/>				
</form><td>
<%
}
}
catch(Exception e){
}
%>
</table>

<%@ include file="ufooter.jsp"%>
