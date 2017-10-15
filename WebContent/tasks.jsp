<%@page import="com.ead.hrmgr.data.resources.TaskResource"%>
<%@page import="com.ead.hrmgr.data.model.Task"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Home | Manage Me</title>
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
	<%
		List<Task> taskList = new TaskResource().getTasks();
		request.setAttribute("list", taskList);
	%>
	<jsp:include page='<%="static//header-nav.jsp"%>' />

	<!-- .site-navbar -->
	<div class="site-wrapper">

		<jsp:include page='<%="static//side-nav.jsp"%>' />

		<!-- site-menubar -->
		<div class="site-main">
			<div class="site-content">
				<div class="row">
					<div class="col-md-5 col-sm-6">
						<div class="widget todo-widget">
							<header class="widget-header">
								<h4 class="widget-title">Task List</h4>
							</header>
							<hr class="widget-separator">
							<div class="widget-body p-border-a-0">
								<ul class="todo-list" style="list-style: none;">
									<c:forEach items="${list}" var="model">
										<li class="todo-item">
											<div class="checkbox checkbox-success">
												<input type="checkbox" id="checkbox02"><label
													for="checkbox02">${model.description}</label>
											</div>
										</li>
									</c:forEach>
								</ul>
								<!-- /.todo-list -->
							</div>
						</div>
						<!-- /.widget -->
					</div>

					<div class="col-md-3 col-sm-6"></div>
					<div class="col-md-4 col-sm-6">
						<div class="col-md-12 col-sm-6">
							<div class="widget">
								<div class="widget-body text-center">
									<h4 class="text-warning mb-3">ASSIGN TASKS TO EMPLOYEES</h4>
									<p class="text-muted mb-0">Click on the below button to
										assign tasks to employees</p>
									<br> <a href="/ead_hr_manager/employees.jsp"
										class="btn action-panel-btn btn-info btn-block">Assign</a>
								</div>

								<!-- /.widget-body -->
							</div>
							<!-- /.widget -->
						</div>
						<div class="col-md-12 col-sm-6">
							<div class="widget">
								<div class="widget-body text-center">
									<h4 class="text-warning mb-3">CREATE NEW TASK</h4>
									<p class="text-muted mb-0">Click on the below button to
										create a new task</p>
									<br> <a href="#" data-toggle="modal"
										data-target="#composeModal"
										class="btn action-panel-btn btn-success btn-block">Create</a>
								</div>
								<!-- /.widget-body -->
							</div>
							<!-- /.widget -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- .site-main -->
	</div>

	<!-- add task model design -->

	<div class="modal fade" id="composeModal" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Add new task</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form action="/ead_hr_manager/api/tasks" method="POST">
					<div class="modal-body">
						<div class="widget todo-widget">
							<div class="widget-body p-border-a-0">
								<div class="form-group">
									<label for="formGroupExampleInput">Task description</label>
									<textarea class="form-control" name="description"
										id="formGroupExampleInput" placeholder=""> </textarea>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" data-dismiss="modal" class="btn btn-danger">Close
							</button>
							<button type="submit" class="btn btn-info">Save</button>
						</div>
					</div>
				</form>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>

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