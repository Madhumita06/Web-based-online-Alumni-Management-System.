<%@ page  import="java.sql.*"  import="java.util.Date"  import="java.util.Vector" import="databaseconnection.*" import="details.*"  import="javax.swing.JOptionPane"%>


<%@ include file="ftheader.jsp"%>

	                  

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
					  out.println("<script>alert('Event Added...!')</script>");
				  }
%>
<br><br>
<h2>Add Events ..</h1>


<form method="post" action="addreq3.jsp">
	<br><input type="text" name="event" placeholder="Event Name" size="30">
<br><input type="text" name="dat" placeholder="Date" size="30">
<br><textarea name="des" rows="" cols="30" placeholder="Event Description" size="30"></textarea>
<br><input type="submit"></form>



<%@ include file="ftfooter.jsp"%>