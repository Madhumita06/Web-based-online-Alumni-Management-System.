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






<%@ include file="ffooter.jsp"%>