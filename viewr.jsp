
<%@ include file="uheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" import="details.*"  import="javax.swing.JOptionPane"%>



<%
try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
String sql="select * from requirement ";
//System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
ResultSet rs2=null;
%>
<i><h2>Requirements are...</i></h2><br>

<table align="" >
<tr><td><h2>Sno<td><h2>At<td><h2>Link<td><h2>Description<td><h2>Name
<%
while(rs.next()){
%>
<tr><td><h2><%=rs.getString(1)%>&nbsp;&nbsp;&nbsp;<td><h2><%=rs.getString(2)%>&nbsp;&nbsp;&nbsp;&nbsp;<td><h2><a href="<%=rs.getString(3)%>" target="blank"><%=rs.getString(3)%></a>&nbsp;&nbsp;&nbsp;&nbsp;<td><h2><%=rs.getString(4)%><td><h2>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(5)%>
<%
}


}
catch(Exception e){
System.out.println("11="+e);
}
%>
</table>
<%@ include file="ufooter.jsp"%>
