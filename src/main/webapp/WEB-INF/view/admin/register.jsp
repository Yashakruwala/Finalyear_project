<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="adminResources/image/favicon.ico">

    <title>AIUI Admin - Registration </title>
  
	<!-- Bootstrap 4.0-->
	<link rel="stylesheet" href="adminResources/css/bootstrap.min.css">
	
	<!-- Bootstrap extend-->
	<link rel="stylesheet" href="adminResources/css/bootstrap-extend.css">

	<!-- Theme style -->
	<link rel="stylesheet" href="adminResources/css/master_style.css">

	<!-- AIUI Admin skins -->
	<link rel="stylesheet" href="adminResources/css/_all-skins.css">	

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body class="hold-transition register-page bg-img" style="background-image:url(adminResources/image/bg-3.jpg);">
	
	<div class="container h-p100">
		<div class="row align-items-center justify-content-md-center h-p100">
			<div class="col-lg-4 col-md-8 col-12">
				<div class="register-box bg-white rounded">
				  <div class="register-box-body">
					<h3 class="text-center">Get started with Us</h3>
					<p class="login-box-msg">Register a new membership</p>

					<form action="index.html" method="post" class="form-element">
					  <div class="form-group has-feedback">
						<input type="text" class="form-control" value="Full name">
						<span class="ion ion-person form-control-feedback"></span>
					  </div>
					  <div class="form-group has-feedback">
						<input type="email" class="form-control" value="Email">
						<span class="ion ion-email form-control-feedback"></span>
					  </div>
					  <div class="form-group has-feedback">
						<input type="password" class="form-control" value="Password">
						<span class="ion ion-locked form-control-feedback"></span>
					  </div>
					  <div class="form-group has-feedback">
						<input type="password" class="form-control" value="Retype password">
						<span class="ion ion-log-in form-control-feedback"></span>
					  </div>
					  <div class="row">
						<div class="col-12">
						  <div class="checkbox">
							<input type="checkbox" id="basic_checkbox_1" >
							<label for="basic_checkbox_1">I agree to the <a href="#"><b>Terms</b></a></label>
						  </div>
						</div>
						<!-- /.col -->
						<div class="col-12 text-center">
						  <button type="submit" class="btn btn-info btn-block margin-top-10">SIGN UP</button>
						</div>
						<!-- /.col -->
					  </div>
					</form>

					<div class="social-auth-links text-center">
					  <p>- OR -</p>
					  <a href="#" class="btn btn-social-icon btn-circle btn-facebook"><i class="fa fa-facebook"></i></a>
					  <a href="#" class="btn btn-social-icon btn-circle btn-twitter"><i class="fa fa-twitter"></i></a>
					  <a href="#" class="btn btn-social-icon btn-circle btn-instagram"><i class="fa fa-instagram"></i></a>
					</div>
					<!-- /.social-auth-links -->

					 <div class="margin-top-20 text-center">
						<p>Already have an account?<a href="login.html" class="text-info m-l-5"> Sign In</a></p>
					 </div>

				  </div>
				  <!-- /.form-box -->
				</div>
			
			</div>
		</div>
	</div>


	<!-- jQuery 3 -->
	<script src="adminResources/js/jquery-3.3.1.min.js"></script>
	
	<!-- popper -->
	<script src="adminResources/js/popper.min.js"></script>
	
	<!-- Bootstrap 4.0-->
	<script src="adminResources/js/bootstrap.min.js"></script>
	
	
</body>
</html>
