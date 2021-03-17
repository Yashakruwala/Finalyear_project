<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="x" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="adminResources/image/favicon.ico">

    <title>Log in </title>
  
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
<body class="hold-transition login-page bg-img" style="background-image:url(adminResources/jpg/bg-3.jpg);">
	
	<div class="container h-p100">
		<div class="row align-items-center justify-content-md-center h-p100">
			<div class="col-lg-4 col-md-8 col-12">
				<div class="login-box rounded bg-white">
				  <div class="login-box-body">
					<h3 class="text-center">Get started with Us</h3>
					<p class="login-box-msg">Sign in to start your session</p>

					<form action="j_spring_security_check" method="post" class="form-element">
					  <div class="form-group has-feedback">
						Email<input type="email" class="form-control" name="username"  required="required"/>
						<span class="ion ion-email form-control-feedback"></span>
					  </div>
					  <div class="form-group has-feedback">
						Password<input type="password" class="form-control" name="password" required="required"/>
						<span class="ion ion-locked form-control-feedback"></span>
					  </div>
					  <div class="row">
						<div class="col-6">
						  <div class="checkbox">
							<input type="checkbox" id="basic_checkbox_1">
							<label for="basic_checkbox_1">Remember Me</label>
						  </div>
						</div>
						<!-- /.col -->
						<div class="col-6">
						 <div class="fog-pwd text-right">
							<a href="javascript:void(0)"><i class="ion ion-locked"></i> Forgot pwd?</a><br>
						  </div>
						</div>
						<!-- /.col -->
						<div class="col-12 text-center">
						  <button type="submit" class="btn btn-info btn-block margin-top-10">SIGN IN</button>
						</div>
						<!-- /.col -->
					  </div>
					</form>

					<div class="margin-top-30 text-center">
						<p>Don't have an account? <a href="register.html" class="text-info m-l-5">Sign Up</a></p>
					</div>

				  </div>
				  <!-- /.login-box-body -->
				</div>
				<!-- /.login-box -->
			
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
