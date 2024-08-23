<%@ include file="header.jsp"%>

<br><br><br>
<font size="+3" color="#6666ff" align="center"><h1>Login Page for Alumni	</h1></font>

<b>

					<table  cellspacing=20 ><tr><td>
	                 <%
if(request.getParameter("mssg")!=null)
				  {
					  out.println("<script>alert('Login Failed...!')</script>");
				  }
%>
											   </table>



<form method="post" action="ulogin2.jsp">
	<table  align="center" cellpadding=20><tr><td>

	<tr><td><input type="text" name="uid" required placeholder="Email id"  size="30"><br>
		<tr><td><input type="password" name="pwd" required placeholder="Password" size="30"><br>

			<tr><td>		  <div class="form_settings"><input class="submit" type="submit"  value="  Login   &nbsp;&nbsp;   " >
<tr>
<td><h2><a href="signup2.jsp">New Alumni Register</a><h2></td></tr>

</form>

</tr>
</table>						

											   



<br><br><br>
<%@ include file="foote.jsp"%>