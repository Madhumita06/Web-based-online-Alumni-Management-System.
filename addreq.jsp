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
					  out.println("<script>alert('Requirement Added...!')</script>");
				  }
%>
							
<br><br>
<h2>Add Requirement ..</h1>


<form method="post" action="addreq2.jsp">
	<br><input type="text" name="at" placeholder="Requirement At" size="30">
<br><input type="text" name="link" placeholder="Link" size="30">
<br><textarea name="des" rows="" cols="30" placeholder="Add Description" size="30"></textarea>
<br><input type="submit"></form>



<%@ include file="ffooter.jsp"%>