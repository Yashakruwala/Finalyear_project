<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="<%=request.getContextPath() %>/adminResources/image/favicon.ico">

<title>Power Consumption Monitoring</title>

<!-- Bootstrap 4.0-->
<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResources/css/bootstrap.min.css">

<!-- Data Table-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/adminResources/css/datatables.min.css" />

<!-- Bootstrap extend-->
<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResources/css/bootstrap-extend.css">

<!-- Theme style -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResources/css/master_style.css">

<!-- AIUI Admin skins -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResources/css/_all-skins.css">

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
						<h3 class="page-title br-0">City Details</h3>
					</div>
				</div>
			</div>

			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-12">
						<div class="box">
							<!-- /.box-header -->
							<div class="box-body">
								<div class="table-responsive">
									<table id="example"
										class="table table-bordered table-hover display  margin-top-10 w-p100">
										<thead>
											<tr>
											    <th>No</th>
												<th>City Name</th>
												<th>City Description</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
										  <c:forEach items="${ls}" var="i" varStatus="j">
											<tr>
											    <td>${j.count}</td>
												<td>${i.cityName}</td>
												<td class="wrapbox auto">${i.cityDescription}</td>
												<td><a href="/editCity?id=${i.id}"> <i class="mdi mdi-pencil-box"
														style="font-size: 20px"></i>
												</a> <a href="/deletecity?id=${i.id}"> <i class="mdi mdi-delete"
														style="margin-left: 10px; font-size: 20px; color: red"></i>
												</a></td>
											</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->

					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
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
	<script src="<%=request.getContextPath() %>/adminResources/js/jquery-3.3.1.min.js"></script>

	<!-- popper -->
	<script src="<%=request.getContextPath() %>/adminResources/js/popper.min.js"></script>

	<!-- Bootstrap 4.0-->
	<script src="<%=request.getContextPath() %>/adminResources/js/bootstrap.min.js"></script>

	<!-- SlimScroll -->
	<script src="<%=request.getContextPath() %>/adminResources/js/jquery.slimscroll.min.js"></script>

	<!-- FastClick -->
	<script src="<%=request.getContextPath() %>/adminResources/js/fastclick.js"></script>

	<!-- Sparkline -->
	<script src="<%=request.getContextPath() %>/adminResources/js/jquery.sparkline.min.js"></script>

	<!-- AIUI Admin App -->
	<script src="<%=request.getContextPath() %>/adminResources/js/template.js"></script>

	<!-- This is data table -->
	<script src="<%=request.getContextPath() %>/adminResources/js/datatables.min.js"></script>

	<!-- AIUI Admin for Data Table -->
	<script src="<%=request.getContextPath() %>/adminResources/js/data-table.js"></script>


</body>
</html>
