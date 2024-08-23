<%@ page  import="java.sql.*"  import="java.util.Date"  import="java.util.Vector" import="databaseconnection.*" import="details.*"  import="javax.swing.JOptionPane"%>


<%@ include file="aheader.jsp"%>

<%
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
String sql="select * from adsur where surst='no'";
ResultSet rs=st.executeQuery(sql);
if(rs.next()){%>
<center>
<h2>Upload Survey</h2><br><br>
 <form action="uploadsurvey1.jsp" method="post">
<table align="center">
<tr><td><font size="+1"color=#006666><strong>Survey Name</strong></font></td><td><input type="text" name="sname" style="width: 500px;margin-right: 5px;margin-left: 5px;margin-top: 5px;margin-bottom: 5px" required></td></tr>
<tr><td><font size="+1"color=#006666><strong>Description</strong></font></td><td><input type="text" name="sdes" style="width: 500px;margin-right: 5px;margin-left: 5px;margin-top: 5px;margin-bottom: 5px" required></td></tr>
<tr><td><font size="+1"color=#006666><strong>Question 1</strong></font></td><td><input type="text" name="ques1" style="width: 500px;margin-right: 5px;margin-left: 5px;margin-top: 5px;margin-bottom: 5px" required></td></tr>
<tr><td><font size="+1"color=#006666><strong>Question 2</strong></font></td><td><input type="text" name="ques2" style="width: 500px;margin-right: 5px;margin-left: 5px;margin-top: 5px;margin-bottom: 5px" required></td></tr>
<tr><td><font size="+1"color=#006666><strong>Question 3</strong></font></td><td><input type="text" name="ques3" style="width: 500px;margin-right: 5px;margin-left: 5px;margin-top: 5px;margin-bottom: 5px" required></td></tr>
<tr><td><font size="+1"color=#006666><strong>Question 4</strong></font></td><td><input type="text" name="ques4" style="width: 500px;margin-right: 5px;margin-left: 5px;margin-top: 5px;margin-bottom: 5px" required></td></tr>
<tr><td><font size="+1"color=#006666><strong>Question 5</strong></font></td><td><input type="text" name="ques5" style="width: 500px;margin-right: 5px;margin-left: 5px;margin-top: 5px;margin-bottom: 5px" required></td></tr>
</table>
<br>
<tr><td><input type="submit" Value="Upload" style="margin-right: 5px;margin-left: 5px;"></td><td><input type="reset" value="Reset" style="margin-right: 5px;margin-left: 5px;"></td></tr>
</form> 
</center>
<%}else{%>
<br><br><br><h2>Survey in progress. To stop the survery <a href="stopsurvery.jsp">Click Here</a></h2>
<%}%>
<%@ include file="afooter.jsp"%>