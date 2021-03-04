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

<title>AIUI Admin - Dashboard Form Validation</title>

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
<body class="hold-transition skin-black light-sidebar sidebar-mini">
	<div class="wrapper">


		<jsp:include page="header.jsp"></jsp:include>


		<!-- Left side column. contains the logo and sidebar -->


		<jsp:include page="menu.jsp"></jsp:include>



		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header d-none d-md-block">
				<div class="d-flex align-items-center">
					<div class="mr-auto">
						<h3 class="page-title br-0">Add User</h3>
					</div>
				</div>
			</div>

			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-12">
						<!-- Basic Forms -->
						<div class="box">
							<!-- /.box-header -->
							<div class="box-body">
								<div class="row">
									<div class="col">
										<form novalidate>
											<div class="row">
												<div class="col-12">
													<div class="form-group">
														<h5>
															User Name <span class="text-danger">*</span>
														</h5>
														<div class="controls">
															<input type="text" name="text" class="form-control"
																required
																data-validation-required-message="This field is required">
														</div>
													</div>
													<div class="form-group">
														<h5>
															Phone Number <span class="text-danger">*</span>
														</h5>
														<div class="controls">
															<input type="text" name="minChar" class="form-control"
																required
																data-validation-required-message="This field is required"
																minlength="10">
														</div>
													</div>
													
													<div class="form-group">
														<div class="controls">
															<select name="select" id="select" required
																class="form-control">
																<option disabled="disabled" selected="selected">Select Your City</option>
																<option value="1">Ahmedabad</option>
																<option value="2">Surat</option>
																<option value="3">Gandhinagar</option>
																<option value="4">Surat</option>
																<option value="5">Mehsana</option>
															</select>
														</div>
														
													</div>
													
													<div class="form-group">
														<div class="controls">
															<select name="select" id="select" required
																class="form-control">
																<option disabled="disabled" selected="selected">Select Your Area </option>
																<option value="1">Ahmedabad</option>
																<option value="2">Surat</option>
																<option value="3">Gandhinagar</option>
																<option value="4">Surat</option>
																<option value="5">Mehsana</option>
															</select>
														</div>
														
													</div>
													
													<div class="form-group">
												<h5>
													Address <span class="text-danger">*</span>
												</h5>
												<div class="controls">
													<textarea rows="3" name="cust_add" id="textarea"
														class="form-control" required ></textarea>
												</div>
											</div>
													
													<div class="form-group">
														<h5>
															 Email Address <span class="text-danger">*</span>
														</h5>
														<div class="controls">
															<input type="text" class="form-control"
																
																data-validation-regex-regex="([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})"
																data-validation-regex-message="Enter Valid Email">
														</div>
													</div>
													<div class="form-group">
														<h5>
															Id Proof <span class="text-danger">*</span>
														</h5>
														<div class="controls">
															<input type="file" name="file" class="form-control"
																required>
														</div>
													</div>
													<div class="text-xs-right">
												<button type="submit" class="btn btn-info">Submit</button>
											</div>

												</div>
												
												
													
													
													
													
													
													
													
													
												</div>
											</div>
											
											
											
										</form>

									</div>
									<!-- /.col -->
								</div>
								<!-- /.row -->
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
					</div>
				</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		
		<jsp:include page="footer.jsp"></jsp:include>
		
		
		
		<!-- Add the sidebar's background. This div must be placed immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->

	<!-- jQuery 3 -->
	<script src="adminResources/js/jquery-3.3.1.min.js"></script>

	<!-- popper -->
	<script src="adminResources/js/popper.min.js"></script>

	<!-- Bootstrap 4.0-->
	<script src="adminResources/js/bootstrap.min.js"></script>

	<!-- SlimScroll -->
	<script src="adminResources/js/jquery.slimscroll.min.js"></script>

	<!-- FastClick -->
	<script src="adminResources/js/fastclick.js"></script>

	<!-- Sparkline -->
	<script src="adminResources/js/jquery.sparkline.min.js"></script>

	<!-- AIUI Admin App -->
	<script src="adminResources/js/template.js"></script>

	<!-- Form validator JavaScript -->
	<script src="adminResources/js/validation.js"></script>
	<script>
		!function(window, document, $) {
			"use strict";
			$("input,select,textarea").not("[type=submit]")
					.jqBootstrapValidation();
		}(window, document, jQuery);
	</script>

</body>
</html>
