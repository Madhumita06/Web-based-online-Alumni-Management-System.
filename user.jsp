<%@ include file="header.jsp"%>

<br><br><br>
<font size="+3" color="#6666ff" align="center"><h1>Login Page for User</h1></font>

<b>

					<table  cellspacing=20 ><tr><td>
	                 <%
if(request.getParameter("mssg")!=null)
				  {
					  out.println("<script>alert('Login Fail...!')</script>");
				  }
%>
											   </table>



<form method="post" action="ulogin.jsp">
	<table  align="center" cellpadding=20><tr><td>

	<tr><td><input type="text" name="uid" required placeholder="Email ID"  size="30"><br>
		<tr><td><input type="password" name="pwd" required placeholder="Password" size="30"><br>

			<tr><td>		  <div class="form_settings"><input class="submit" type="submit"  value="  Login   &nbsp;&nbsp;   " >

</form>

</tr>
<tr>
<td><h2><a href="signup.jsp">New Student Register</a><h2></td></tr>
</table>						

											   



<br><br><br>
<%@ include file="foote.jsp"%>