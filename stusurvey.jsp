<%@ include file="uheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" import="details.*"%>
<%
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
String sql="select * from surques where surst='yes' ";
ResultSet rs=st.executeQuery(sql);
%>
<center>
<i><h2>Completed Surveys</i></h3><br>
<table border="2" >
<tr><th><h4>Name</h4></th>
<th><h4>Description</h4></th>
<th><h4>Question 1</h4></th>
<th><h4>Question 2</h4></th>
<th><h4>Question 3</h4></th>
<th><h4>Question 4</h4></th>
<th><h4>Question 5</h4></th></tr>
<%
while(rs.next()){
%>
<tr>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><a href="stusurvey1.jsp?id=<%=rs.getString(1)%>&qno=<%=1%>"><%=rs.getString(4)%></a></td>
<td><a href="stusurvey1.jsp?id=<%=rs.getString(1)%>&qno=<%=2%>"><%=rs.getString(5)%></a></td>
<td><a href="stusurvey1.jsp?id=<%=rs.getString(1)%>&qno=<%=3%>"><%=rs.getString(6)%></a></td>
<td><a href="stusurvey1.jsp?id=<%=rs.getString(1)%>&qno=<%=4%>"><%=rs.getString(7)%></a></td>
<td><a href="stusurvey1.jsp?id=<%=rs.getString(1)%>&qno=<%=5%>"><%=rs.getString(8)%></a></td>
</tr>
<%}%>
</table>
</center>
<%@ include file="afooter.jsp"%>
