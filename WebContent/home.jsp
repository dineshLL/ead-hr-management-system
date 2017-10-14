<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Home | Manage Me</title>
<meta name="description"
	content="Kiwi is a premium adman dashboard template based on bootstrap">
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=0">
<link rel="apple-touch-icon" href="apple-touch-icon.html">
<!-- theme customizier \ demo only -->
<link rel="stylesheet" href="./assets/examples/css/theme-customizer.css">
<script src="./assets/examples/js/theme-customizer.js"></script>
<!-- core plugins -->
<link rel="stylesheet" href="./assets/vendor/css/hamburgers.css">
<link rel="stylesheet"
	href="./assets/vendor/bower_components/animate.css/animate.min.css">
<link rel="stylesheet"
	href="./assets/vendor/bower_components/perfect-scrollbar/css/perfect-scrollbar.min.css">
<link rel="stylesheet"
	href="./assets/vendor/bower_components/switchery/dist/switchery.min.css">
<link rel="stylesheet"
	href="./assets/vendor/bower_components/sweetalert/dist/sweetalert.css">
<!-- Site-wide styles -->
<link rel="stylesheet" href="./assets/vendor/css/bootstrap.css">
<link rel="stylesheet" href="css/site.css">
<!-- Fonts -->
<link rel="stylesheet"
	href="./assets/vendor/bower_components/font-awesome/css/font-awesome.min.css">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600">
<script
	src="./assets/vendor/bower_components/breakpoints.js/dist/breakpoints.min.js"></script>
<script>
	Breakpoints({
		xs : {
			min : 0,
			max : 575
		},
		sm : {
			min : 576,
			max : 767
		},
		md : {
			min : 768,
			max : 991
		},
		lg : {
			min : 992,
			max : 1199
		},
		xl : {
			min : 1200,
			max : Infinity
		}
	});
</script>
</head>

<body
	class="menubar-left menubar-light demo-examples demo-uikit-widgets">
	<!--[if lt IE 10]>
	  <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<![endif]-->

	<jsp:include page='<%="static//header-nav.jsp"%>' />

	<!-- .site-navbar -->
	<div class="site-wrapper">

		<jsp:include page='<%="static//side-nav.jsp"%>' />

		<!-- site-menubar -->
		<div class="site-main">
			<div class="site-content">
				<div class="row">
					<div class="col-md-4 col-sm-6">
						<div class="widget">
							<header class="widget-header">
								<h4 class="widget-title">Employee Management</h4>
							</header>
							<!-- /.widget-header -->
							<hr class="widget-separator">
							<div class="widget-body text-center">
								<div class="big-icon mb-3 watermark">
									<i class="fa fa-5x fa-exclamation-circle"></i>
								</div>
								<h5 class="mb-3">Manage company employees</h5>
								<div style="text-align: left;">
									<ul>
										<li>List all employees</li>
										<li>Assign tasks</li>
										<li>Create or update a employee</li>
									</ul>
								</div>
								<a href="employees.jsp" class="btn px-5 btn-info">Go In</a>
							</div>
							<!-- /.widget-body -->
						</div>
						<!-- /.widget -->
					</div>
					<!-- /.col -->
					<div class="col-md-4 col-sm-6">
						<div class="widget">
							<header class="widget-header">
								<h4 class="widget-title">User role Management</h4>
							</header>
							<!-- /.widget-header -->
							<hr class="widget-separator">
							<div class="widget-body text-center">
								<div class="big-icon mb-3 watermark">
									<i class="fa fa-5x fa-dribbble"></i>
								</div>
								<h5 class="mb-3">Manage company user roles</h5>
								<div style="text-align: left;">
									<ul>
										<li>List all user roles</li>
										<li>Create new user roles</li>
										<li>Update user role</li>
									</ul>
								</div>
								<a href="user-roles.jsp" class="btn px-5 btn-primary">Go In</a>
							</div>
							<!-- /.widget-body -->
						</div>
						<!-- /.widget -->
					</div>
					<!-- /.col -->
					<div class="col-md-4 col-sm-6">
						<div class="widget">
							<header class="widget-header">
								<h4 class="widget-title">Tasks Management</h4>
							</header>
							<!-- /.widget-header -->
							<hr class="widget-separator">
							<div class="widget-body text-center">
								<div class="big-icon mb-3 watermark">
									<i class="fa fa-5x fa-drupal"></i>
								</div>
								<h5 class="mb-3">Manage available tasks</h5>
								<div style="text-align: left;">
									<ul>
										<li>Current list of tasks</li>
										<li>Create new tasks</li>
										<li>Make changes to existing tasks</li>
									</ul>
								</div>
								<a href="tasks.jsp" class="btn px-5 btn-success">Go In</a>
							</div>
							<!-- /.widget-body -->
						</div>
						<!-- /.widget -->
					</div>
					<!-- /.col -->
					
				</div>
			</div>
		</div>
		<!-- .site-main -->
	</div>
	<script
		src="./assets/vendor/bower_components/jquery/dist/jquery.min.js"></script>
	<script
		src="./assets/vendor/bower_components/tether/dist/js/tether.min.js"></script>
	<script
		src="./assets/vendor/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<script
		src="./assets/vendor/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script
		src="./assets/vendor/bower_components/perfect-scrollbar/js/perfect-scrollbar.jquery.min.js"></script>
	<script
		src="./assets/vendor/bower_components/sweetalert/dist/sweetalert.min.js"></script>
	<script
		src="./assets/vendor/bower_components/switchery/dist/switchery.min.js"></script>
	<script
		src="./assets/vendor/bower_components/waypoints/lib/jquery.waypoints.min.js"></script>
	<script
		src="./assets/vendor/bower_components/waypoints/lib/shortcuts/sticky.min.js"></script>
	<script
		src="./assets/vendor/bower_components/counterup/jquery.counterup.min.js"></script>
	<script src="./assets/global/js/plugins/firstlitter.js"></script>
	<script src="./assets/global/js/plugins/video-modal.js"></script>
	<!-- plugins for the current page -->
	<script
		src="./assets/vendor/bower_components/jquery-circle-progress/dist/circle-progress.js"></script>
	<!-- site-wide scripts -->
	<script src="./assets/global/js/main.js"></script>
	<script src="js/site.js"></script>
	<script src="js/menubar.js"></script>
</body>
<!-- Mirrored from spantags.com/kiwi/leftbar/uikit.widgets.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Oct 2017 04:34:19 GMT -->

</html>