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

<title>AIUI Admin - Dashboard</title>

<!-- Bootstrap 4.0-->
<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResources/css/bootstrap.css">

<!-- Bootstrap extend-->
<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResources/css/bootstrap-extend.css">

<!-- theme style -->
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
						<h3 class="page-title br-0">Dashboard</h3>
					</div>
					<div class="right-title">
						<div class="d-flex mt-10 justify-content-end">
							<div class="d-md-flex mr-20 ml-10 d-none">
								<div class="chart-text mr-10">
									<p class="mb-0 font-size-12">THIS MONTH</p>
									<h4 class="my-0 text-primary">$12,125</h4>
								</div>
								<div class="spark-chart">
									<div id="thismonth">
										<canvas width="60" height="35"
											style="display: inline-block; width: 60px; height: 35px; vertical-align: top;"></canvas>
									</div>
								</div>
							</div>
							<div class="d-md-flex ml-10 d-none">
								<div class="chart-text mr-10">
									<p class="mb-0 font-size-12">LAST YEAR</p>
									<h4 class="my-0 text-danger">$22,754</h4>
								</div>
								<div class="spark-chart">
									<div id="lastyear">
										<canvas width="60" height="35"
											style="display: inline-block; width: 60px; height: 35px; vertical-align: top;"></canvas>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Main content -->
			<section class="content">
				<div class="container-full">

					<div class="row">
						<div class="col-lg-8 col-12">
							<div class="box">
								<div class="box-header with-border">
									<h4 class="box-title">Overview</h4>
									<ul class="box-controls pull-right">
										<li class="dropdown"><a data-toggle="dropdown" href="#"><i
												class="ti-more-alt rotate-90"></i></a>
											<div class="dropdown-menu dropdown-menu-right">
												<a class="dropdown-item" href="#"><i class="ti-import"></i>
													Import</a> <a class="dropdown-item" href="#"><i
													class="ti-export"></i> Export</a> <a class="dropdown-item"
													href="#"><i class="ti-printer"></i> Print</a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="#"><i class="ti-settings"></i>
													Settings</a>
											</div></li>
									</ul>
								</div>
								<div class="box-body">
									<div id="chart-overview"></div>
								</div>
							</div>
							<div class="box">
								<div class="box-header">
									<h4 class="box-title">Audience</h4>
									<div class="box-controls pull-right">
										<button class="btn btn-outline btn-xs mx-10">Week</button>
										<button class="btn btn-outline btn-xs">Month</button>
									</div>
								</div>
								<div class="box-body">
									<div
										class="d-md-flex d-block align-items-center justify-content-between px-15">
										<div>
											<label>Users</label>
											<h2 class="mt-0">15,125</h2>
										</div>
										<div>
											<label>Bounce Rate</label>
											<h2 class="mt-0">25.50%</h2>
										</div>
										<div>
											<label>Page Views</label>
											<h2 class="mt-0">75,951</h2>
										</div>
										<div>
											<label>Sessions</label>
											<h2 class="mt-0">14,125</h2>
										</div>
									</div>
									<div>
										<div id="flotChart" class="flot-chart h-350"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-12">
							<div class="box">
								<div class="box-body">
									<h2>$424652</h2>
									<p>Sales</p>
								</div>
								<div class="box-body p-0">
									<div id="spark1"></div>
								</div>
							</div>
							<div class="box">
								<div class="box-header with-border">
									<h4 class="box-title">Data Managed</h4>
									<ul class="box-controls pull-right">
										<li class="dropdown"><a data-toggle="dropdown" href="#"><i
												class="ti-more-alt rotate-90"></i></a>
											<div class="dropdown-menu dropdown-menu-right">
												<a class="dropdown-item" href="#"><i class="ti-import"></i>
													Import</a> <a class="dropdown-item" href="#"><i
													class="ti-export"></i> Export</a> <a class="dropdown-item"
													href="#"><i class="ti-printer"></i> Print</a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="#"><i class="ti-settings"></i>
													Settings</a>
											</div></li>
									</ul>
								</div>

								<div class="box-body">
									<div class="d-flex align-items-center justify-content-between">
										<div>
											<h1 class="mb-0 mt-5">7,485</h1>
											<p>Ext. Records</p>
										</div>
										<div>
											<div id="barchart4"></div>
										</div>
									</div>
									<div class="table-responsive">
										<table class="table table-hover mb-0">
											<tbody>
												<tr>
													<th><i class="mdi mdi-circle text-success"></i></th>
													<td><i class="fa fa-facebook-square text-facebook"></i></td>
													<td><span>548</span></td>
													<td>55% <i class="mdi mdi-arrow-up"></i></td>
												</tr>
												<tr>
													<th><i class="mdi mdi-circle text-info"></i></th>
													<td><i class="fa fa-twitter-square text-twitter"></i></td>
													<td><span>845</span></td>
													<td>25% <i class="mdi mdi-arrow-up"></i></td>
												</tr>
												<tr>
													<th><i class="mdi mdi-circle text-warning"></i></th>
													<td><i class="fa fa-instagram text-instagram"></i></td>
													<td><span>425</span></td>
													<td>18% <i class="mdi mdi-arrow-down"></i></td>
												</tr>
												<tr>
													<th><i class="mdi mdi-circle text-danger"></i></th>
													<td><i class="fa fa-google-plus-square text-google"></i></td>
													<td><span>624</span></td>
													<td>30% <i class="mdi mdi-arrow-up"></i></td>
												</tr>
												<tr>
													<th><i class="mdi mdi-circle"></i></th>
													<td><i class="fa fa-pinterest-square text-pinterest"></i></td>
													<td><span>412</span></td>
													<td>15% <i class="mdi mdi-arrow-down"></i></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="box bg-img box-inverse pull-up"
								style="background-image: url(adminResources/image/10.jpg);"
								data-overlay="7">
								<div class="box-header with-border">
									<h4 class="box-title">Latest</h4>
									<ul class="box-controls pull-right">
										<li><a class="box-btn-close" href="#"></a></li>
										<li><a class="box-btn-fullscreen" href="#"></a></li>
									</ul>
								</div>
								<div class="box-body mt-20">
									<span class="badge" data-overlay="5">New</span>
									<h2 class="font-weight-200 mb-0">Contrary to popular</h2>
									<p>There are many variations of passages</p>
									<ul class="flexbox flex-justified mt-25">
										<li>
											<p class="font-size-20 text-success mb-0 font-weight-300">
												<i class="fa fa-caret-up text-success"></i> +1.92% <small
													class="font-size-12">41,425.81</small>
											</p>
											<p class="font-size-12">QWDR</p>
										</li>

										<li>
											<p class="font-size-20 text-danger mb-0 font-weight-300">
												<i class="fa fa-caret-down text-danger"></i> -0.92% <small
													class="font-size-12">54,425.81</small>
											</p>
											<p class="font-size-12">WSDF</p>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-12">
							<div class="box">
								<div class="box-header">
									<h4 class="box-title">Income</h4>
									<ul class="box-controls pull-right">
										<li><a class="box-btn-close" href="#"></a></li>
										<li><a class="box-btn-slide" href="#"></a></li>
										<li><a class="box-btn" href="#"> <i class="ti-reload"></i></a></li>
									</ul>
								</div>
								<div class="box-body">
									<div class="d-flex justify-content-between align-items-center">
										<div class="text-dark">
											<h4 class="font-size-16">$21,150,542</h4>
											<p class="font-size-12 mb-0">Total Income</p>
										</div>
										<div>
											<span class="badge badge-lg badge-dark">Monthly</span><br>
											<p class="mt-10 mb-0">
												<span class="font-size-12">90%</span> <span
													class="font-size-16 text-info"><i
													class="ti-arrow-up"></i></span>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-12">
							<div class="box">
								<div class="box-header">
									<h4 class="box-title">Orders</h4>
									<ul class="box-controls pull-right">
										<li><a class="box-btn-close" href="#"></a></li>
										<li><a class="box-btn-slide" href="#"></a></li>
										<li><a class="box-btn" href="#"> <i class="ti-reload"></i></a></li>
									</ul>
								</div>
								<div class="box-body">
									<div class="d-flex justify-content-between align-items-center">
										<div class="text-dark">
											<h4 class="font-size-16">50,542</h4>
											<p class="font-size-12 mb-0">New Orders</p>
										</div>
										<div>
											<span class="badge badge-lg badge-success">Annual</span><br>
											<p class="mt-10 mb-0">
												<span class="font-size-12">30%</span> <span
													class="font-size-16 text-success"><i
													class="ti-arrow-up"></i></span>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-12">
							<div class="box">
								<div class="box-header">
									<h4 class="box-title">Vistits</h4>
									<ul class="box-controls pull-right">
										<li><a class="box-btn-close" href="#"></a></li>
										<li><a class="box-btn-slide" href="#"></a></li>
										<li><a class="box-btn" href="#"> <i class="ti-reload"></i></a></li>
									</ul>
								</div>
								<div class="box-body">
									<div class="d-flex justify-content-between align-items-center">
										<div class="text-dark">
											<h4 class="font-size-16">150,542,2</h4>
											<p class="font-size-12 mb-0">Site Vistits Tday</p>
										</div>
										<div>
											<span class="badge badge-lg badge-danger">Today</span><br>
											<p class="mt-10 mb-0">
												<span class="font-size-12">44%</span> <span
													class="font-size-16 text-primary"><i
													class="ti-arrow-up"></i></span>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-12">
							<div class="box">
								<div class="box-header">
									<h4 class="box-title">User Activity</h4>
									<ul class="box-controls pull-right">
										<li><a class="box-btn-close" href="#"></a></li>
										<li><a class="box-btn-slide" href="#"></a></li>
										<li><a class="box-btn" href="#"> <i class="ti-reload"></i></a></li>
									</ul>
								</div>
								<div class="box-body">
									<div class="d-flex justify-content-between align-items-center">
										<div class="text-dark">
											<h4 class="font-size-16">30,542</h4>
											<p class="font-size-12 mb-0">In first month</p>
										</div>
										<div>
											<span class="badge badge-lg badge-warning">Low Value</span><br>
											<p class="mt-10 mb-0">
												<span class="font-size-12">35%</span> <span
													class="font-size-16 text-warning"><i
													class="ti-arrow-up"></i></span>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-6 col-12">
							<div class="box">
								<div class="box-header with-border">
									<h4 class="box-title">By Users</h4>
								</div>
								<!-- /.box-header -->
								<div class="box-body no-padding pb-5">
									<div class="table-responsive">
										<table class="table">
											<tbody>
												<tr>
													<td><i
														class="fa fa-chrome mr-2 text-danger font-size-16"></i>Chrome</td>
													<td>5126<small class="text-muted">(59%)</small></td>
													<td>55.55%</td>
													<td>458<small class="text-muted">(84%)</small></td>
												</tr>
												<tr>
													<td><i
														class="fa fa-firefox mr-2 text-blue font-size-16"></i>Firefox</td>
													<td>1124<small class="text-muted">(36%)</small></td>
													<td>21.77%</td>
													<td>189<small class="text-muted">(45%)</small></td>
												</tr>
												<tr>
													<td><i
														class="fa fa-internet-explorer mr-2 text-warning font-size-16"></i>Internet-Explorer</td>
													<td>2015<small class="text-muted">(28%)</small></td>
													<td>31.87%</td>
													<td>875<small class="text-muted">(82%)</small></td>
												</tr>
												<tr>
													<td><i
														class="fa fa-opera mr-2 text-danger font-size-16"></i>Opera</td>
													<td>1842<small class="text-muted">(29%)</small></td>
													<td>34.55%</td>
													<td>428<small class="text-muted">(58%)</small></td>
												</tr>
												<tr>
													<td><i
														class="fa fa-safari mr-2 text-info font-size-16"></i>Safari</td>
													<td>3512<small class="text-muted">(37%)</small></td>
													<td>41%</td>
													<td>399<small class="text-muted">(94%)</small></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<!-- /.box-body -->
							</div>
							<!-- /.box -->
						</div>
						<div class="col-xl-6 col-12">
							<div class="box">
								<div class="box-header with-border">
									<h4 class="box-title">Task Report</h4>
								</div>
								<!-- /.box-header -->
								<div class="box-body no-padding">
									<div class="table-responsive">
										<table class="table">
											<tbody>
												<tr>
													<th style="width: 10px" class="font-size-16">#</th>
													<th class="font-size-16">Task</th>
													<th class="font-size-16">Progress</th>
													<th class="font-size-16">Deadline</th>
													<th style="width: 40px" class="font-size-16">Label</th>
												</tr>
												<tr>
													<td>1.</td>
													<td>Update software</td>
													<td>
														<div class="progress progress-xs">
															<div class="progress-bar progress-bar-danger"
																style="width: 55%"></div>
														</div>
													</td>
													<td>Apr 12, 2017</td>
													<td><span class="badge bg-danger ">55%</span></td>
												</tr>
												<tr>
													<td>2.</td>
													<td>Clean database</td>
													<td>
														<div class="progress progress-xs">
															<div class="progress-bar progress-bar-yellow"
																style="width: 70%"></div>
														</div>
													</td>
													<td>Apr 12, 2017</td>
													<td><span class="badge bg-yellow">70%</span></td>
												</tr>
												<tr>
													<td>3.</td>
													<td>Cron job running</td>
													<td>
														<div class="progress progress-xs progress-striped active">
															<div class="progress-bar progress-bar-primary"
																style="width: 30%"></div>
														</div>
													</td>
													<td>Apr 12, 2017</td>
													<td><span class="badge bg-light-blue">30%</span></td>
												</tr>
												<tr>
													<td>4.</td>
													<td>Fix and squish bugs</td>
													<td>
														<div class="progress progress-xs progress-striped active">
															<div class="progress-bar progress-bar-success"
																style="width: 90%"></div>
														</div>
													</td>
													<td>Apr 12, 2017</td>
													<td><span class="badge bg-success">90%</span></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<!-- /.box-body -->
							</div>
							<!-- /.box -->
						</div>
					</div>
				</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		
		<jsp:include page="footer.jsp"></jsp:include>
		

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-light">
			<div class="rpanel-title">
				<span class="btn pull-right"><i class="ion ion-close"
					data-toggle="control-sidebar"></i></span>
			</div>
			<!-- Create the tabs -->
			<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
				<li class="nav-item"><a href="#control-sidebar-home-tab"
					data-toggle="tab" class="active">Chat</a></li>
				<li class="nav-item"><a href="#control-sidebar-settings-tab"
					data-toggle="tab">Todo</a></li>
			</ul>
			<!-- Tab panes -->
			<div class="tab-content">
				<div class="tab-pane active" id="control-sidebar-home-tab">
					<div class="flexbox">
						<a href="javascript:void(0)" class="text-grey"> <i
							class="ti-more"></i>
						</a>
						<p>Users</p>
						<a href="javascript:void(0)" class="text-right text-grey"><i
							class="ti-plus"></i></a>
					</div>
					<div class="lookup lookup-sm lookup-right d-none d-lg-block">
						<input type="text" name="s" placeholder="Search" class="w-p100">
					</div>
					<div class="media-list media-list-hover mt-20">
						<div class="media py-10 px-0">
							<a class="avatar avatar-lg status-success" href="#"> <img
								src="adminResources/image/1.jpg" alt="...">
							</a>
							<div class="media-body">
								<p class="font-size-16">
									<a class="hover-primary" href="#"><strong>Tyler</strong></a>
								</p>
								<p>Praesent tristique diam...</p>
								<span>Just now</span>
							</div>
						</div>

						<div class="media py-10 px-0">
							<a class="avatar avatar-lg status-danger" href="#"> <img
								src="adminResources/image/2.jpg" alt="...">
							</a>
							<div class="media-body">
								<p class="font-size-16">
									<a class="hover-primary" href="#"><strong>Luke</strong></a>
								</p>
								<p>Cras tempor diam ...</p>
								<span>33 min ago</span>
							</div>
						</div>

						<div class="media py-10 px-0">
							<a class="avatar avatar-lg status-warning" href="#"> <img
								src="adminResources/image/3.jpg" alt="...">
							</a>
							<div class="media-body">
								<p class="font-size-16">
									<a class="hover-primary" href="#"><strong>Evan</strong></a>
								</p>
								<p>In posuere tortor vel...</p>
								<span>42 min ago</span>
							</div>
						</div>

						<div class="media py-10 px-0">
							<a class="avatar avatar-lg status-primary" href="#"> <img
								src="adminResources/image/4.jpg" alt="...">
							</a>
							<div class="media-body">
								<p class="font-size-16">
									<a class="hover-primary" href="#"><strong>Evan</strong></a>
								</p>
								<p>In posuere tortor vel...</p>
								<span>42 min ago</span>
							</div>
						</div>

						<div class="media py-10 px-0">
							<a class="avatar avatar-lg status-success" href="#"> <img
								src="adminResources/image/1.jpg" alt="...">
							</a>
							<div class="media-body">
								<p class="font-size-16">
									<a class="hover-primary" href="#"><strong>Tyler</strong></a>
								</p>
								<p>Praesent tristique diam...</p>
								<span>Just now</span>
							</div>
						</div>

						<div class="media py-10 px-0">
							<a class="avatar avatar-lg status-danger" href="#"> <img
								src="adminResources/image/2.jpg" alt="...">
							</a>
							<div class="media-body">
								<p class="font-size-16">
									<a class="hover-primary" href="#"><strong>Luke</strong></a>
								</p>
								<p>Cras tempor diam ...</p>
								<span>33 min ago</span>
							</div>
						</div>

						<div class="media py-10 px-0">
							<a class="avatar avatar-lg status-warning" href="#"> <img
								src="adminResources/image/3.jpg" alt="...">
							</a>
							<div class="media-body">
								<p class="font-size-16">
									<a class="hover-primary" href="#"><strong>Evan</strong></a>
								</p>
								<p>In posuere tortor vel...</p>
								<span>42 min ago</span>
							</div>
						</div>

						<div class="media py-10 px-0">
							<a class="avatar avatar-lg status-primary" href="#"> <img
								src="adminResources/image/4.jpg" alt="...">
							</a>
							<div class="media-body">
								<p class="font-size-16">
									<a class="hover-primary" href="#"><strong>Evan</strong></a>
								</p>
								<p>In posuere tortor vel...</p>
								<span>42 min ago</span>
							</div>
						</div>

					</div>
				</div>
				<div class="tab-pane" id="control-sidebar-settings-tab">
					<div class="flexbox">
						<a href="javascript:void(0)" class="text-grey"> <i
							class="ti-more"></i>
						</a>
						<p>Todo List</p>
						<a href="javascript:void(0)" class="text-right text-grey"><i
							class="ti-plus"></i></a>
					</div>
					<ul class="todo-list mt-20">
						<li class="py-15 px-5 by-1">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_1"
							class="filled-in"> <label for="basic_checkbox_1"
							class="mb-0 h-15"></label> <!-- todo text --> <span
							class="text-line">Nulla vitae purus</span> <!-- Emphasis label -->
							<small class="badge bg-danger"><i class="fa fa-clock-o"></i>
								2 mins</small> <!-- General tools such as edit or delete-->
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_2"
							class="filled-in"> <label for="basic_checkbox_2"
							class="mb-0 h-15"></label> <span class="text-line">Phasellus
								interdum</span> <small class="badge bg-info"><i
								class="fa fa-clock-o"></i> 4 hours</small>
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5 by-1">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_3"
							class="filled-in"> <label for="basic_checkbox_3"
							class="mb-0 h-15"></label> <span class="text-line">Quisque
								sodales</span> <small class="badge bg-warning"><i
								class="fa fa-clock-o"></i> 1 day</small>
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_4"
							class="filled-in"> <label for="basic_checkbox_4"
							class="mb-0 h-15"></label> <span class="text-line">Proin
								nec mi porta</span> <small class="badge bg-success"><i
								class="fa fa-clock-o"></i> 3 days</small>
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5 by-1">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_5"
							class="filled-in"> <label for="basic_checkbox_5"
							class="mb-0 h-15"></label> <span class="text-line">Maecenas
								scelerisque</span> <small class="badge bg-primary"><i
								class="fa fa-clock-o"></i> 1 week</small>
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_6"
							class="filled-in"> <label for="basic_checkbox_6"
							class="mb-0 h-15"></label> <span class="text-line">Vivamus
								nec orci</span> <small class="badge bg-info"><i
								class="fa fa-clock-o"></i> 1 month</small>
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5 by-1">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_7"
							class="filled-in"> <label for="basic_checkbox_7"
							class="mb-0 h-15"></label> <!-- todo text --> <span
							class="text-line">Nulla vitae purus</span> <!-- Emphasis label -->
							<small class="badge bg-danger"><i class="fa fa-clock-o"></i>
								2 mins</small> <!-- General tools such as edit or delete-->
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_8"
							class="filled-in"> <label for="basic_checkbox_8"
							class="mb-0 h-15"></label> <span class="text-line">Phasellus
								interdum</span> <small class="badge bg-info"><i
								class="fa fa-clock-o"></i> 4 hours</small>
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5 by-1">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_9"
							class="filled-in"> <label for="basic_checkbox_9"
							class="mb-0 h-15"></label> <span class="text-line">Quisque
								sodales</span> <small class="badge bg-warning"><i
								class="fa fa-clock-o"></i> 1 day</small>
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
						<li class="py-15 px-5">
							<!-- checkbox --> <input type="checkbox" id="basic_checkbox_10"
							class="filled-in"> <label for="basic_checkbox_10"
							class="mb-0 h-15"></label> <span class="text-line">Proin
								nec mi porta</span> <small class="badge bg-success"><i
								class="fa fa-clock-o"></i> 3 days</small>
							<div class="tools">
								<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</aside>
		<!-- /.control-sidebar -->

		<!-- Add the sidebar's background. This div must be placed immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>

	</div>
	<!-- ./wrapper -->



	<!-- jQuery 3 -->
	<script src="<%=request.getContextPath() %>/adminResources/js/jquery-3.3.1.min.js"></script>

	<!-- jQuery UI 1.11.4 -->
	<script src="<%=request.getContextPath() %>/adminResources/js/jquery-ui.js"></script>

	<!-- popper -->
	<script src="<%=request.getContextPath() %>/adminResources/js/popper.min.js"></script>

	<!-- Bootstrap 4.0-->
	<script src="<%=request.getContextPath() %>/adminResources/js/bootstrap.js"></script>

	<!-- Slimscroll -->
	<script src="<%=request.getContextPath() %>/adminResources/js/jquery.slimscroll.js"></script>

	<!-- FastClick -->
	<script src="<%=request.getContextPath() %>/adminResources/js/fastclick.js"></script>

	<!-- Sparkline -->
	<script src="<%=request.getContextPath() %>/adminResources/js/jquery.sparkline.min.js"></script>

	<!-- apexcharts -->
	<script src="<%=request.getContextPath() %>/adminResources/js/irregular-data-series.js"></script>
	<script src="<%=request.getContextPath() %>/adminResources/js/apexcharts.js"></script>

	<!-- FLOT CHARTS -->
	<script src="<%=request.getContextPath() %>/adminResources/js/jquery.flot.js"></script>
	<script src="<%=request.getContextPath() %>/adminResources/js/jquery.flot.resize.js"></script>
	<script src="<%=request.getContextPath() %>/adminResources/js/sampledata1.js"></script>

	<!-- AIUI Admin App -->
	<script src="<%=request.getContextPath() %>/adminResources/js/template.js"></script>

	<!-- AIUI Admin dashboard demo (This is only for demo purposes) -->
	<script src="<%=request.getContextPath() %>/adminResources/js/dashboard.js"></script>

</body>
</html>
