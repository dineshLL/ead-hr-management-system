<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Login</title>
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=0,minimal-ui">
<link rel="apple-touch-icon" href="apple-touch-icon.html">
<!-- core plugins -->
<link rel="stylesheet"
	href="./assets/vendor/bower_components/animate.css/animate.min.css">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="./assets/vendor/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.css">
<link rel="stylesheet" href="./assets/vendor/css/bootstrap.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,600">
<!-- core plugins -->
<!-- styles for the current page -->
<link rel="stylesheet" href="./assets/examples/css/pages/login.css">
<!-- / styles for the current page -->
</head>
<body class="simple-page page-login">
	<!--[if lt IE 10]>
	<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<![endif]-->
	<header class="simple-page-header">
		<div class="home-btn">
			<a href="index.html" class="btn btn-outline-secondary"><i
				class="fa fa-home animated zoomIn"></i></a>
		</div>
	</header>
	<div class="simple-page-wrap">
		<div class="simple-page-content mb-4">
			<div class="simple-page-logo animated zoomIn">
				<a href="index.html"><span>Manage Me</span></a>
			</div>
			<!-- logo -->
			<div class="simple-page-form animated flipInY" id="login-form">
				<h6 class="form-title mb-4 text-center">Sign In With Your
					Manage Me Account</h6>
				<form action="#">
					<div class="form-group">
						<input id="sign-in-email" type="email" class="form-control"
							placeholder="Email">
					</div>
					<div class="form-group">
						<input id="sign-in-password" type="password" class="form-control"
							placeholder="Password">
					</div>
					<div class="form-group mb-5">
						<div class="checkbox checkbox-primary">
							<input type="checkbox" id="keep_me_logged_in"><label
								for="keep_me_logged_in">Keep me signed in</label>
						</div>
					</div>
					<!-- <input type="submit" class="btn btn-primary" value="SING IN"> -->
					<a href="home.jsp" class="btn btn-primary">SIGN IN</a>
				</form>
			</div>
			<!-- #login-form -->
			<div class="text-center">
				<p>
					<a href="password-forget.html" class="text-white">FORGOT YOUR
						PASSWORD ?</a>
				</p>
				<p>
					<small class="text-white mr-2">Don't have an account ?</small> <a
						href="signup.html" class="text-white font-weight-bold">CREATE
						AN ACCOUNT</a>
				</p>
			</div>
			<!-- .simple-page-footer -->
		</div>
		<!-- /.simple-page-content -->
	</div>
	<!-- .simple-page-wrap -->
	<!-- core plugins -->
	<jsp:include page='<%="static//footer.jsp"%>' />
</body>
</html>