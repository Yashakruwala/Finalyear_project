<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="x" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../images/favicon.ico">

    <title>AIUI Admin - Dashboard  Modals UI </title>
  
	<!-- Bootstrap 4.0-->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/bootstrap.min.css">
	
	<!-- Bootstrap extend-->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/bootstrap-extend.css">

	<!-- Theme style -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/master_style.css">

	<!-- AIUI Admin skins -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/skins/_all-skins.css">
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery.js"></script>

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
												<th>Manage Device</th>
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
													<td><img id="myImg"
														src="<%request.getContextPath();%>/Document/IdentityProof/${i.fileName}"
														class="image" alt="Identity Proof"></td>
													<td><a href="managedevice?id=${i.id}"> <i
															class="ti-pencil-alt" id="deviceIcon" title=""
															onmouseover="getDevice(${i.id})"></i>
													</a></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>

        <div class="col-12">
          <div class="box">
            <div class="box-body">
              <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modal-primary">
               Launch Primary Modal
              </button>
              
			  <div class="modal modal-primary fade" id="modal-primary">
				  <div class="modal-dialog">
					<div class="modal-content">
					  <div class="modal-header">
						<h4 class="modal-title">Primary Modal</h4>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						  <span aria-hidden="true">&times;</span></button>
					  </div>
					  <div class="modal-body">
						<p>One fine body&hellip;</p>
					  </div>
					  <div class="modal-footer">
						<button type="button" class="btn btn-outline btn-light" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-outline btn-light float-right">Save changes</button>
					  </div>
					</div>
					<!-- /.modal-content -->
				  </div>
				  <!-- /.modal-dialog -->
			  </div>
			  <!-- /.modal -->
             </div>
          </div>
        </div>
      </div>
								 
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
	  

      
                
    </section>
   
   
   <div id="myModal" class="modal">
										<span class="close">&times;</span> <img class="modal-content"
											id="img01">

										<div id="caption"></div>

									</div>  
 
  
  

	<!-- jQuery 3 -->
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery-3.3.1.min.js"></script>
	
	<!-- popper -->
	<script src="<%=request.getContextPath()%>/adminResources/js/popper.min.js"></script>
	
	<!-- Bootstrap 4.0-->
	<script src="<%=request.getContextPath()%>/adminResources/js/bootstrap.min.js"></script>
	
	<!-- SlimScroll -->
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery.slimscroll.min.js"></script>
	
	<!-- FastClick -->
	<script src="<%=request.getContextPath()%>/adminResources/js/fastclick.js"></script>
	
	<!-- Sparkline -->
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery.sparkline.min.js"></script>
	
	<!-- AIUI Admin App -->
	<script src="<%=request.getContextPath()%>/adminResources/js/template.js"></script>
	
</body>
</html>
