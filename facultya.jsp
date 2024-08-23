
<%@ include file="fheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" import="details.*"  import="javax.swing.JOptionPane"%>



<%
try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
String sql="select * from faculty ";
//System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
ResultSet rs2=null;
%>
<i><h2>Faculty Details</i></h3><br>

<table border="2" >
<tr><td><h3>Name</td><td><h3>Email</td><td><h3>Phone</td><td><h3>Qualification</td><td><h3>Designation</td><td><h3>Address</td>
<%
while(rs.next()){
%>
<tr><td><h3><%=rs.getString(2)%></td><td><h3><%=rs.getString(9)%></td><td><h3><%=rs.getString(8)%></td><td><h3><%=rs.getString(11)%></td><td><h3><%=rs.getString(12)%></td><td><h3><%=rs.getString(4)%></td>
<%
}


}
catch(Exception e){
System.out.println("11="+e);
}
%>
</table>
<%@ include file="ffooter.jsp"%>
