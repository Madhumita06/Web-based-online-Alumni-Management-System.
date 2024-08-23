<%@ page  import="java.sql.*"  import="databaseconnection.*"%>
<%@ include file="fheader.jsp"%>
<%
String surname,surdes,ques1,ques2,ques3,ques4,ques5;
String stuname=(String)session.getAttribute("email");
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st1=con.createStatement();
String sql="select * from oldstd where email='"+stuname+"' and surst='no' ";
String sql1="select * from surques where surst='no'";
ResultSet rs=st.executeQuery(sql);
ResultSet rs1=st1.executeQuery(sql1);
if(rs.next()){
	if(rs1.next()){%>
	<br><br><form action="takesurvey1.jsp" method="post">
	<center><h2><b>Hey take this survey!!</b></h2>
	<table>
	<input type="hidden" name="surid" value="<%=rs1.getString(1)%>">
	<tr><th><h2 style="margin-top: 5px;margin-bottom: 5px;margin-left: 10px;margin-right: 10px;">Survey Name: </h2></th>
	<td><h2 style="margin-top: 5px;margin-bottom: 5px;margin-left: 10px;margin-right: 10px;"><%=rs1.getString(2)%></h2></td></tr>
	<tr><th><h2 style="margin-top: 5px;margin-bottom: 5px;margin-left: 10px;margin-right: 10px;">Description: </h2></th>
	<td><h2 style="margin-top: 5px;margin-bottom: 5px;margin-left: 10px;margin-right: 10px;"><%=rs1.getString(3)%></h2></td></tr>
	<%
	for(int i=1,j=4;i<6;i++,j++){%>
		<tr><th><h2 style="margin-top: 5px;margin-bottom: 5px;margin-left: 10px;margin-right: 10px;">Question <%=i%>: </h2></th>
		<td><h2 style="margin-top: 5px;margin-bottom: 5px;margin-left: 10px;margin-right: 10px;"><%=rs1.getString(j)%></h2></td></tr>
		<tr><th><h2 style="margin-top: 5px;margin-bottom: 5px;margin-left: 10px;margin-right: 10px;">Rating: </h2></th>
		<td><select name="ques<%=i%>">
		<option value="1">1 (Poor)</option>
		<option value="2">2 (Bad)</option>
		<option value="3">3 (Average)</option>
		<option value="4">4 (Good)</option>
		<option value="5">5 (Excellent)</option>
		</select></td></tr>
	<%}
	%>
	</table><br><br>
	<tr><td><input type="submit" Value="Upload" style="margin-right: 5px;margin-left: 5px;"></td><td><input type="reset" value="Reset" style="margin-right: 5px;margin-left: 5px;"></td></tr>
	</center></form>
	<%}}else{%>
	<br><br><br><br><h2>No surveys at this moment. Thank You.</h2>
<%}%>
<%@ include file="ufooter.jsp"%>