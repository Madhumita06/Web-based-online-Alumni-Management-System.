<%@ include file="session.jsp"%>
<!doctype html>
<html lang="en" class="no-js">
<head>
	<title>Student</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">


	<link rel="stylesheet" href="css/bootstrap.css" type="text/css" media="screen">
	<link rel="stylesheet" type="text/css" href="css/magnific-popup.css" media="screen">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.css" media="screen">
	<link rel="stylesheet" type="text/css" href="css/jquery.bxslider.css" media="screen">
	<link rel="stylesheet" type="text/css" href="css/style.css" media="screen">
	<link rel="stylesheet" type="text/css" href="css/responsive.css" media="screen">
	
</head>
<body>

	<!-- Container -->
	<div id="container">
		<!-- Header
		    ================================================== -->
		<header class="clearfix">
			<!-- Static navbar -->
			<div class="navbar navbar-default navbar-fixed-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav navbar-right">

							<li class="drop"><a class="active" href="u_home.jsp">Home</a>
							<li class="drop"><a class="active" href="stusurvey.jsp">View Survey</a>
<li class="drop"><a class="active" href="alumnis.jsp">Alumni Details</a>
<li class="drop"><a class="active" href="discussion.jsp">Discussion</a>
							<li class="drop"><a class="active" href="sevents.jsp">View Events</a>
						<li class="drop"><a class="active" href="viewr.jsp">View Requirements</a>

							<li class="drop"><a class="active" href="index.jsp">Logout</a>							
						</ul>

					</div>
				</div>
			</div>
		</header>
		<!-- End Header -->

		<!-- content 
			================================================== -->
		<div id="content">

			<!-- Page Banner -->
			<div class="page-banner">
				<div class="container">
				</div>
			</div>

			<!-- blog-box Banner -->
			<div class="blog-box with-sidebar">
				<div class="container">
					<div class="row">

						<div class="col-md-9 single-post">
							<div class="single-post-content">
								



<%
String email=(String)session.getAttribute("email");
%>

