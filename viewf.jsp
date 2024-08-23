
<%@ include file="uheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" import="details.*"  import="javax.swing.JOptionPane"%>



<%
try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
String sql="SELECT * FROM oldstd";
//System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
ResultSet rs2=null;
%>
<i><h3>View Results are...</i></h3><br>

<table align="" >
<tr><td><h3>Company<td><h3>Name<td><h3>Email<td><h3>Contact<td><h3>Position<td><h3>Link
<%
while(rs.next()){
%>
<tr><td><h3><%=rs.getString("company")%>&nbsp;&nbsp;&nbsp;<td><h3><%=rs.getString("name")%>&nbsp;&nbsp;&nbsp;&nbsp;<td><h3><%=rs.getString("phone")%>&nbsp;&nbsp;&nbsp;&nbsp;<td><h3><%=rs.getString("email")%><td><h3>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("position")%><td><h3><a href="<%=rs.getString("url")%>" target="blank">Link</a>
<%
}


}
catch(Exception e){
System.out.println("11="+e);
}
%>
</table>
<%@ include file="ufooter.jsp"%>
