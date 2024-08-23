
<%@ include file="ftheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" import="details.*"  import="javax.swing.JOptionPane"%>



<%
try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
String sql="select * from events ";
//System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
ResultSet rs2=null;
%>
<i><h2>Events are...</i></h2><br>

<table align="" >
<tr><td><h2>Event&nbsp;&nbsp;&nbsp;<td><h2>Name<td><h2>Date<td><h2>Description<td><h2>&nbsp;&nbsp;&nbsp;Name
<%
while(rs.next()){
%>
<tr><td><h2><%=rs.getString(1)%>&nbsp;&nbsp;&nbsp;<td><h2><%=rs.getString(2)%>&nbsp;&nbsp;&nbsp;&nbsp;<td><h2><%=rs.getString(3)%></a>&nbsp;&nbsp;&nbsp;&nbsp;<td><h2><%=rs.getString(4)%><td><h2>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(5)%>
<%
}


}
catch(Exception e){
System.out.println("11="+e);
}
%>
</table>
<%@ include file="ftfooter.jsp"%>
