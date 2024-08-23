<%@ page  import="java.sql.*"  import="java.util.Date"  import="java.util.Vector" import="databaseconnection.*" import="details.*"  import="javax.swing.JOptionPane"%>


<%@ include file="uheader.jsp"%>



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





			</div>			</div>

						<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>

						<div class="col-md-3 sidebar">
							<div class="sidebar-widgets">
								<div class="search-widget widget">
							<form method="post" action="usearch.jsp">
										</button>
									</form>
								</div>

								<div class="tabs-widget widget">
									<ul class="tab-links">
										<li><a class="tab-content active" href="#"> Profile Pic</a></li>
									</ul>
									<div class="tab-box">
										<div class="tab-content active">
											<ul class="post-popular">

<!--profile picture-->
					<img src="view1.jsp?id=<%=email%>" alt="" width="230" height="250" >
											</ul>
										</div>

										</div>
									</div>
								</div>

								<div class="accordion-widget widget">
									<h3><%=email%></h3>
									<div class="accordion-box">


									<div class="accord-elem">
											<div class="accord-title">
												<h4>View Formar  Companies</h5>
												<a class="accord-link" href="#"></a>
											</div>
											<div class="accord-content">
												<p><a href="viewf.jsp">view</a></p>
											</div>
										</div></div>

										</div>
									</div>
								</div>


							</div>
						</div>
					</div>
											
				</div>
			</div>

		</div>
		<!-- End content -->


		<!-- footer 
			================================================== -->
		<footer>
			<div class="up-footer">
				<div class="container">
					<div class="row">

				
					</div>
				</div>
			</div>

			<div class="footer-line">
				<div class="container">
					<div class="footer-line-in">
						<div class="row">
							<div class="col-md-8">
								<p>&#169;AlmaConnect 2018 | All Rights Reserved</p>
							</div>
							<div class="col-md-4">
								
							</div>
						</div>						
					</div>
				</div>
			</div>

		</footer>
		<!-- End footer -->

		<div class="fixed-link-top">
			<div class="container">
				<a class="go-top" href="#"><i class="fa fa-angle-up"></i></a>
			</div>
		</div>

	</div>
	<!-- End Container -->

	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.migrate.js"></script>
	<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/retina-1.1.0.min.js"></script>
	<script type="text/javascript" src="js/plugins-scroll.js"></script>
	<script type="text/javascript" src="js/script.js"></script>

</body>

</html>