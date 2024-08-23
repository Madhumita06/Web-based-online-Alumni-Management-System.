<%@ page  import="java.sql.*"  import="java.util.Date"  import="java.util.Vector" import="databaseconnection.*" import="details.*"  import="javax.swing.JOptionPane"%>


<%@ include file="fheader.jsp"%>



<script language="javascript" type="text/javascript">

function popitup(url) {
	newwindow=window.open(url,'name','height=600,width=800');
	if (window.focus) {newwindow.focus()}
	return false;
}

// -->
</script>
<%
if(request.getParameter("msg")!=null)
				  {
					  out.println("<script>alert('Login Success...!')</script>");
				  }
%>

<h2>Welcome <%=session.getAttribute("name")%>...</h1>

<form method="post" action="discussion1a.jsp">
	<br><br>
<table cellpadding="10"> 
<%

	Connection con1 = databasecon.getconnection();
	Statement st1 = con1.createStatement();
	String sss1 = "select * from discusstab  ";
	ResultSet rs=st1.executeQuery(sss1);
	while(rs.next())
	{%>
<tr><td><h5><%=rs.getString(1)%>:</h5><td><h4><%=rs.getString(2)%></h4>
<%	}
	%>
<tr><td><td align="right"><textarea name="msg" rows="" cols="50"></textarea>
<tr><td><td align="right"><input type="submit" value="Send">

</table>
<br><br><br><br><br>
</form>




<%@ include file="ffooter.jsp"%>