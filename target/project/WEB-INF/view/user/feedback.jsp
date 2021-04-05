<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon"
	href="<%=request.getContextPath()%>/adminResources/image/favicon.ico">

<title>Power Consumption Monitoring</title>

<!-- Bootstrap 4.0-->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/bootstrap.min.css">

<!-- Data Table-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/adminResources/css/datatables.min.css" />

<!-- Bootstrap extend-->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/bootstrap-extend.css">

<!-- Theme style -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/master_style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/font-awesome2.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/star.css">
<!-- AIUI Admin skins -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/_all-skins.css">

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
			<!-- Main content -->
			<section class="content">

				<div class="row">
					<div class="col-12">
						<!-- Basic Forms -->
						<div class="box">
							<div class="box-header"
								style="background-image: linear-gradient(90deg, #9ba7ca, transparent);">
								<h4 class="m-0">Post Feedbacks</h4>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<div class="row">
									<div class="col">
										<form novalidate>
											<fieldset class="rating mb-20">
												<input type="radio" id="star5" name="rating" value="5" /><label
													class="full" for="star5" title="Awesome - 5 stars"></label>
												<input type="radio" id="star4" name="rating" value="4" /><label
													class="full" for="star4" title="Pretty good - 4 stars"></label>
												<input type="radio" id="star3" name="rating" value="3" /><label
													class="full" for="star3" title="Meh - 3 stars"></label> <input
													type="radio" id="star2" name="rating" value="2" /><label
													class="full" for="star2" title="Kinda bad - 2 stars"></label>
												<input type="radio" id="star1" name="rating" value="1" /><label
													class="full" for="star1" title="Sucks big time - 1 star"></label>
											</fieldset>

											<div class="form-group">
												<div class="controls">
													<textarea rows="5" id="textarea" class="form-control"
														placeholder="Enter About Your Feedback..."></textarea>
												</div>
											</div>

											<div class="text-xs-right">
												<button type="submit" class="btn btn-info">Post</button>
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

				<div class="row">
					<div class="col-12">
						<!-- Basic Forms -->
						<div class="box">
							<!-- /.box-header -->
							<div class="box-header"
								style="background-image: linear-gradient(90deg, #9ba7ca, transparent);">
								<h4 class="m-0">Feedbacks</h4>
							</div>
							<div class="box-body">

								<!-- ################## Feedback For Loop Start Here ################ -->

								<div class="post">
									<div class="user-block">
										<img class="img-bordered-sm rounded-circle"
											src="<%=request.getContextPath()%>/adminResources/image/avatar.png"
											alt="user image"> <span class="username"> <span>@userName</span>
											<span class="pull-right btn-box-tool"> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i>
										</span>
										</span> <span class="description">5 minutes ago</span>
									</div>
									<!-- /.user-block -->
									<div class="activitytimeline">
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit. Integer nec odio. Praesent libero. Sed cursus ante
											dapibus diam. Sed nisi. Nulla quis sem at nibh elementum
											imperdiet. Duis sagittis ipsum.</p>
									</div>
								</div>

								<!-- ################## Feedback For Loop End Here ################ -->
								<!-- /.row -->
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
					</div>
				</div>
				<!-- /.box -->
			</section>
		</div>
	</div>

	<!-- /.content-wrapper -->

	<jsp:include page="footer.jsp"></jsp:include>


	<!-- Add the sidebar's background. This div must be placed immediately after the control sidebar -->
	<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->

	<!-- jQuery 3 -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery-3.3.1.min.js"></script>

	<!-- popper -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/popper.min.js"></script>

	<!-- Bootstrap 4.0-->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/bootstrap.min.js"></script>

	<!-- SlimScroll -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.slimscroll.min.js"></script>

	<!-- FastClick -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/fastclick.js"></script>

	<!-- Sparkline -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.sparkline.min.js"></script>

	<!-- AIUI Admin App -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/template.js"></script>

	<!-- This is data table -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/datatables.min.js"></script>

	<!-- AIUI Admin for Data Table -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/data-table.js"></script>


</body>
</html>
