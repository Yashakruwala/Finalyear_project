<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="x" uri="http://www.springframework.org/tags/form" %>
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
								<h4 class="m-0">Post Complaint</h4>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<div class="row">
									<div class="col">
										<x:form action="addcomplaint" method="post" modelAttribute="complaintVo">
											<div class="form-group">
												<div class="controls">
													<x:input path="complaintSubject" class="form-control"
														placeholder="Enter Your Complaint Subject"/>
												</div>
											</div>

											<div class="form-group">
												<div class="controls">
													<x:textarea path="complaintDescription" rows="5" class="form-control"
														placeholder="Enter About Your Complaint..."/>
												</div>
											</div>
                                              
                                              
											<div class="text-xs-right">
												<button type="submit" class="btn btn-info">Post</button>
											</div>
										</x:form>

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
								<h4 class="m-0">Complaint</h4>
							</div>
							<div class="box-body">

								<!-- ################## Complaint For Loop Start Here ################ -->

								<div class="post" style="border: 0px">
									<div class="user-block">
										<img class="img-bordered-sm rounded-circle"
											src="<%=request.getContextPath()%>/adminResources/image/avatar.png"
											alt="user image"> <span class="username"> <span>@userName</span>
											<span class="pull-right btn-box-tool"> 20/02/2021 </span>
										</span> <span class="description">@subject</span>
									</div>
									<!-- /.user-block -->
									<div class="activitytimeline">
										<p> I, on behalf of my locality, with to draw your kind attention towards frequent 
										breakdown of electricity in Rainak Bazar Area. The low voltage and frequent tripping 
										of electricity in this area has become almost a daily routine.</p>
									</div>
								</div>

								<div class="post" style="margin-left: 250px; border: 0px">
									<div class="user-block mb-0">
										<img class="img-bordered-sm rounded-circle"
											src="<%=request.getContextPath()%>/adminResources/image/avatar.png"
											alt="user image"> <span class="username"> <span>@userName</span>
											<span class="pull-right btn-box-tool"> 20/02/2021 </span>
									</div>
									<!-- /.user-block -->
									<div class="activitytimeline">
										<p>We take customer satisfaction seriously and are glad to hear from you. First, I 
										would like to apologize for the frustration you've been experiencing recently. I 
										want you to know that we appreciate your feedback. It will allow us to resolve any 
										problems that occur and help us to improve our services.</p>
									</div>
								</div>
								<hr>

								<!-- ################## Complaint For Loop End Here ################ -->
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
