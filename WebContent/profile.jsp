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
				<div class="profile-header">
					<div class="profile-header-cover">
						<div class="d-flex align-items-center justify-content-center mb-4">
							<div>
								<div class="avatar avatar-lg avatar-circle mx-4">
									<a href="javascript:void(0)"><img
										src="./assets/global/images/221.jpg" alt="avatar"></a>
								</div>
								<!-- .avatar -->
							</div>
						</div>
						<div class="text-center">
							<h5 class="mb-4">
								<a href="javascript:void(0)">John Doe</a>
							</h5>
							<div class="d-flex justify-content-center">
								<a href="javascript:void(0)" class="mr-5 theme-color"><i
									class="fa fa-bolt mr-1"></i> Web Developer</a> <a
									href="javascript:void(0)" class="theme-color"><i
									class="fa fa-map-marker mr-1"></i>Cairo, Egypt</a>
							</div>
						</div>
					</div>

					<br> <br>

					<div class="row">
						<div class="col-lg-5">
							<div class="widget todo-widget">
								<header class="widget-header">
									<h4 class="widget-title">Task List</h4>
								</header>
								<hr class="widget-separator">
								<div class="widget-body p-border-a-0">
									<ul class="todo-list" style="list-style: none;">
										<li class="todo-item">
											<div class="checkbox checkbox-success">
												<input type="checkbox" id="checkbox02"><label
													for="checkbox02">Record The First Episode Of HTML
													Tutorial</label>
											</div>
										</li>
										<!-- /.todo-item -->
										<li class="todo-item">
											<div class="checkbox checkbox-success">
												<input type="checkbox" id="checkbox2"><label
													for="checkbox2">Prepare The Conference Schedule</label>
											</div>
										</li>
										<!-- /.todo-item -->
										<li class="todo-item">
											<div class="checkbox checkbox-success">
												<input type="checkbox" id="checkbox4" checked="checked"><label
													for="checkbox4">Decide The Live Discussion Time</label>
											</div>
										</li>
										<!-- /.todo-item -->
										<li class="todo-item">
											<div class="checkbox checkbox-success">
												<input type="checkbox" id="checkbox3" checked="checked"><label
													for="checkbox3">Prepare For The Next Project</label>
											</div>
										</li>
										<!-- /.todo-item -->
										<li class="todo-item">
											<div class="checkbox checkbox-success">
												<input type="checkbox" id="checkbox5" checked="checked"><label
													for="checkbox5">Finish Up AngularJs Tutorial</label>
											</div>
										</li>
										<!-- /.todo-item -->
										<li class="todo-item">
											<div class="checkbox checkbox-success">
												<input type="checkbox" id="checkbox1" checked="checked"><label
													for="checkbox1">Finish Kiwi Project</label>
											</div>
										</li>
										<!-- /.todo-item -->
									</ul>
									<!-- /.todo-list -->
								</div>
							</div>
							<!-- /.widget -->
						</div>
						<div class="col-lg-2"></div>
						<div class="col-lg-5">
							<div class="widget todo-widget">
								<header class="widget-header">
									<h4 class="widget-title">Personal Information</h4>
								</header>
								<hr class="widget-separator">
								<div class="widget-body p-border-a-0">
									<form>
										<div class="form-group">
											<label for="formGroupExampleInput">Name</label> <input
												type="text" class="form-control" id="formGroupExampleInput"
												placeholder="Dinesh Liyanage">
										</div>
										<div class="form-group">
											<label for="formGroupExampleInput2">NIC number</label> <input
												type="text" class="form-control" id="formGroupExampleInput2"
												placeholder="940203929V">
										</div>
										<div class="form-group">
											<label for="formGroupExampleInput2">Address</label> <input
												type="text" class="form-control" id="formGroupExampleInput2"
												placeholder="Pahalagama, Kitalawa">
										</div>
										<div class="form-group">
											<label for="formGroupExampleInput2">Designation</label> <input
												type="text" class="form-control" id="formGroupExampleInput2"
												placeholder="Software Engineer">
										</div>
										<div class="form-group">
											<label for="formGroupExampleInput2">User role</label> <input
												type="text" class="form-control" id="formGroupExampleInput2"
												placeholder="User role">
										</div>
									</form>
								</div>
								<footer class="widget-footer bg-faded">
									<a href="javascript:void(0)"
										class="btn btn-sm btn-success mr-3  float-right">Save</a>
								</footer>
							</div>
							<!-- /.widget -->
						</div>
					</div>
					<!-- ./profile-header-bottom -->
				</div>
				<!-- ./profile-header -->
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