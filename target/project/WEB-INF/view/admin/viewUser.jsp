<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
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
<script src="<%=request.getContextPath()%>/adminResources/js/jquery.js"></script>

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

<!-- AIUI Admin skins -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/_all-skins.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/animated-masonry-gallery.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/ekko-lightbox.css">


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
						<h3 class="page-title br-0">User Details</h3>
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
										class="table table-bordered table-hover display nowrap margin-top-10 w-p100">
										<thead>
											<tr>
												<th>No</th>
												<th>User Name</th>
												<th>Phone Number</th>
												<th>City</th>
												<th>Area</th>
												<th>Address</th>
												<th>Id Proof</th>
												<th>Meter Number</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${ls}" var="i" varStatus="j">
												<tr>
													<td>${j.count}</td>
													<td>${i.userName}</td>
													<td>${i.phoneNumber}</td>
													<td>${i.cityVo.cityName}</td>
													<td>${i.areaVo.areaName}</td>
													<td>${i.address}</td>

													<td><a
														href="<%request.getContextPath();%>/Document/IdentityProof/${i.fileName}"
														data-toggle="lightbox" data-gallery="multiimages"> <img
															src="<%request.getContextPath();%>/Document/IdentityProof/${i.fileName}"
															class="image" alt="Identity Proof">
													</a></td>

													<td>${i.meterNumber}</td>

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

	<div class="modal fade" id="modal-default">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Device Details</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p>One fine body&hellip;</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->


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
	<script
		src="<%=request.getContextPath()%>/adminResources/js/animated-masonry-gallery.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.isotope.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/ekko-lightbox.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/gallery.js"></script>
	<script type="text/javascript">
function getDevice(id)
{
		var userId=id;
		var deviceIcon = document.getElementById("deviceIcon");
		console.log("---"+userId);
		 var htp=new XMLHttpRequest();
		
		 htp.onreadystatechange=function(){
			if(htp.readyState==4){
				
				
				var data=JSON.parse(htp.responseText);
				console.log(data);
				
			  for(var i=0;i<data.length;i++)
				{
				  var deviceName = data[i].deviceName;
				  var deviceDescription = data[i].deviceDescription;
				  
				  var t = document.createTextNode(deviceIcon);

				  deviceIcon.title = "Device Name :" + deviceName + "\nDevice Description :" + deviceDescription;
				  /* x.setAttribute("title",deviceName);
					x.setAttribute("title",);
					  x.appendChild(t); */
					  /* deviceIcon.appendChild(x); */
				 
				  /* opn.text=deviceName;
				  userId.title.add(opn); */
				  opn.text=deviceDescription;
				}
			}
	}
		 htp.open("get","devicesearch?id="+userId,true);
			htp.send(); 
}
</script>

</body>
</html>
